# Boris Bikes

London's Boris Bikes (well, 'Santander Cycles') are awesome. Anyone can hire out a bike and ride it around London.

Let's go back several years, to the days when there were no Boris Bikes. Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

## Installation Instructions 

```
$ git clone git@github.com:RichEwin/boris-bikes.git
$ cd boris-bikes
```

## User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```
```
Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
```
