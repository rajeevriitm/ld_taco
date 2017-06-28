# LD Taco - Sample repo

#### Setting it up
1. Clone the repo to local repository
2. ``` bundle install```
3. ```rake db:create```
4. ```rake db:migrate```
5. ```rake db:seed``` optional

### Heroku API setup
* Base url is
* ```GET /tacos``` - Returns a list of all tacos in the database
* ```GET /tacos/:id``` - returns the data of the specific taco
* ```POST /tacos``` - Creates a taco with the given parameters. The params ```name``` and ```price``` are required for a valid taco and ```price``` should be an integer.
* ```DELETE /tacos/:id``` - Removes the taco with this ID from the database


#### Optional features
1. Rspec tests for controllers and models added
2. Validaoin added to check presence of name and price of taco and integer values for price.
3. Additional gems ``` active_model_serializers``` for adding control over attributes to be sent in a response and ```will_paginate``` for paginating taco responses .

