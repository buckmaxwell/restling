# Set up 


## Install
```bash
brew install sqitch
perl -MCPAN -e'install DBD::Pg'
```



## Api

```bash
http POST http://localhost:3000/rpc/create_user \
  username=new_user \
  password=secure_password \
  email=user@example.com
```

