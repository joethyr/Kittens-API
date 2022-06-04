# Project: Kittens API

A quick project that data produces API.

## Description

 A Rails, data-producing API that is meant to be a lesson in quickly building a pure vanilla RESTFUL resource.
 Create a website that is both a normal HTML-producing back end AND an API that can be used to pull data from it.

## Getting Started

Test and make sure your RestClient calls return the proper JSON strings:

```
r = RestClient.get("http://localhost:3000/kittens/1", :accept => :json))
```

then

```
puts r.body
```

The results should be something like below: 
```
{"id":1,"name":"Chris P Bacon","age":"4","cuteness":"Very Cute","softness":"Very Soft","created_at":"2022-06-04T02:35:44.003Z","updated_at":"2022-06-04T02:35:44.003Z"}
```

### Ruby Version

* Rails 7 requires Ruby 2.7.0 or newer.

## Help

Run command to view all of the options you can pass to rails application.
```
rails new --help
```
## Links
[Heroku App](https://arcane-beach-78469.herokuapp.com/)

## Web Resources

* [The Odin Project](https://www.theodinproject.com/)
* [Rails Guides](https://guides.rubyonrails.org/)
