# Set up 


## Install
```bash
brew install sqitch
perl -MCPAN -e'install DBD::Pg'
```



## Api

### Create user
```bash
http POST http://localhost:3000/rpc/create_user \
  username=new_user \
  password=secure_password \
  email=user@example.com
```

### Login
```bash
http POST http://localhost:3000/rpc/login_user p_username=new_user p_password=secure_password
```


