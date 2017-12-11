##Ola Queuing App

Application Info:

* Ruby version: 2.3.1

* System dependencies: Linux

*Remote URL: http://01c213e2.ngrok.io/rides

* Database creation: rake db:create then rake db:migrate


* Services (job queues, cache servers, search engines, etc.) : ```redis server``` for running redis and ```bundle exec sidekiq``` for sidekiq 

* Start instructions: cd repo_name then bundle install then rails s 

* Application Logic and descisions:

1. A Driver model for storing driver name and ID
2. A Customer model for storing customer name and ID
3. A Rides model that will have driver id info , for associating driver to a ride and customer id info for associating cutomer to ride.
4. One can start the app by adding customers to app by: http://01c213e2.ngrok.io/customers/new 
5. Then go to http://01c213e2.ngrok.io/rides to check the dashboard
6. Go to http://01c213e2.ngrok.io/drivers/new to create a driver entry 
7. Go to http://01c213e2.ngrok.io/drivers/1  for selecting drivers and starting his rides
8. Go to http://01c213e2.ngrok.io/rides/new to create a new ride for chosen customer
9. Select a driver and choose his ride , one can see the waiting status of ride change to ongoing once selection is made.
10. A sidekiq worker queue is enabled to handle completion of ride after 5 minutes.


