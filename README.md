Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices




mkdir -p ./postgres-data

docker-compose up -d

docker-compose down


azerconnect:
  target: dev
  outputs:
    dev:
      type: postgres
      threads: 4
      host: localhost
      port: 5432
      user: myuser
      pass: mypassword
      dbname: mydatabase
      schema: public  # This is the default schema, change if you use a different one



