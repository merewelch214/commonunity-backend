# README

- About CommonUnity-Backend
  This repo contains the schema, models, migrations, controllers, and endpoints that power the CommonUnity app. CommonUnity is a place where field-bsaed staff can check in and out of locations, log safety concerns and review announcements.

- Tech Used

* Rails API ( 16.13.0 )
* React (https://github.com/merewelch214/commonunity-frontend)
* Postgres DB
* React Router
* Moment
* Google Maps API
* Action Cable Web Sockets

- Features

* Location Feed
  Non-manager users are able to check in and out of a set number of locations. As users check-in and out of locations, the location feed updates. All users have access to the location feed and can see where their teammates have recently checked into.

* Safety Concerns
  Users are able to log safety concerns. This sends their current latitude and longitude to their manager. The manager is able to see where the user is on a Google map. Managers can then resolve a safety concern.

* Announcement Feed
  Managers can add and delete announcements for their team's announcement feed. The feed is visible to all users, who can also comment on and like announcements.

- Development

- Testing
