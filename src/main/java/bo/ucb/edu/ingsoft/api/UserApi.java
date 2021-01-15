package bo.ucb.edu.ingsoft.api;

import bo.ucb.edu.ingsoft.bl.CustomerBl;
import bo.ucb.edu.ingsoft.bl.TransactionBl;
import bo.ucb.edu.ingsoft.dto.UserDto;
import bo.ucb.edu.ingsoft.model.User;
import bo.ucb.edu.ingsoft.model.Transaction;
import bo.ucb.edu.ingsoft.util.TransactionUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@CrossOrigin(origins = {"http://localhost:4200"})
@RestController
@RequestMapping(value = "/v1/user")
public class UserApi {

    private CustomerBl customerBl;
    private TransactionBl transactionBl;

    private static final Logger log = LoggerFactory.getLogger(UserApi.class);

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @Autowired
    public UserApi(CustomerBl customerBl, TransactionBl transactionBl) {
        this.customerBl = customerBl;
        this.transactionBl =  transactionBl;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public UserDto findById(@PathVariable("id") Integer id, HttpServletRequest request) {
        return customerBl.findUserById(id);
    }

    @RequestMapping(method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public UserDto createUser(@Valid @RequestBody UserDto UserDto, User user, HttpServletRequest request, BindingResult bindingResult) {
        log.info(">>USERDTO: {}", UserDto.toString());
        Transaction transaction = TransactionUtil.createTransaction(request);
        transactionBl.createTransaction(transaction);
        UserDto userDtoResponse = customerBl.createUser(UserDto, transaction, user);
        return userDtoResponse;
    }

    @RequestMapping(method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<UserDto> listUser(HttpServletRequest request){
        return customerBl.listUser();
    }
}
