package bo.ucb.edu.ingsoft.bl;

import bo.ucb.edu.ingsoft.dao.UserDao;
import bo.ucb.edu.ingsoft.dao.TransactionDao;
import bo.ucb.edu.ingsoft.dto.UserDto;
import bo.ucb.edu.ingsoft.model.User;
import bo.ucb.edu.ingsoft.model.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomerBl {
    private UserDao userDao;
    private TransactionDao transactionDao;

    @Autowired
    public CustomerBl(UserDao userDao, TransactionDao transactionDao) {
        this.userDao = userDao;
        this.transactionDao = transactionDao;
    }

    public UserDto findUserById(Integer userId) {
        User user = userDao.findByUserId(userId);
        UserDto userDto = new UserDto();
        userDto.setUserId(user.getUserId());
        userDto.setCompanyId(user.getCompanyId());
        userDto.setUsername(user.getUsername());
        userDto.setPassword(user.getPassword());
        return userDto;
    }

    public UserDto createUser(UserDto userDto, Transaction transaction, User user) {
        user.setTxId(transaction.getTxId());
        user.setTxHost(transaction.getTxHost());
        user.setTxUserId(transaction.getTxUserId());
        user.setTxDate(transaction.getTxDate());
        user.setCityId(userDto.getCityId());
        user.setCompanyId(userDto.getCompanyId());
        user.setName(userDto.getName());
        user.setLastname(userDto.getLastname());
        user.setPhone(userDto.getPhone());
        user.setBirthday(userDto.getBirthday());
        user.setEmail(userDto.getEmail());
        user.setUsername(userDto.getUsername());
        user.setPassword(userDto.getPassword());
        userDao.create(user);

        return userDto;
    }

    public List<UserDto> listUser(){
        List<User> users = userDao.getUser();
        List<UserDto> usersDto = new ArrayList<UserDto>();

        for(int i=0; i < users.size(); i++){
            User user = users.get(i);
            UserDto userDto = new UserDto();

            userDto.setUserId(user.getUserId());
            userDto.setCompanyId(user.getCompanyId());
            userDto.setUsername(user.getUsername());

            usersDto.add(i, userDto);
        }
        return usersDto;
    }
}
