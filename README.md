# flyway_demo

This repo added for my medium [post](https://muhammedtasatan.medium.com/evolutionary-database-design-via-flyway-269e91927b5). It demonstrates how to use Evolutionary Database Design with Flyway and Postgresql

How to part of db in => [/db/readme.md](https://github.com/mftasatan/flyway_demo/blob/main/db/readme.md)

You can add branch policies for Continous Integration part and add flyway task to check if developer's scripts working in CI or dev database.

Because of your code contains DB Scripts, your Continuous Delivery process can easily publish your code to test environment with required scripts to run with flyway. 
