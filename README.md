Boris Bikes (Santander) simulation. Will include multiple parts:
1. Bikes
2. Docking stations
3. Vans
4. Repair staff

#BORIS BIKES

##Project Description

This is a project that will run all the Docking Stations, simulate all the Bikes, and emulate all the infrastructure (vans, repair staff, and so on) for Boris Bikes

##User Stories

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
=TESTED FOR

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
=TESTED FOR

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
=TESTED FOR

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
=TESTED FOR

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
=TESTED FOR #ref test name?

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
=TESTED FOR

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

| Objects | Messages |
| ------- | -------- |
| Person | |
| Bike | check_working? |
| DockingStation | release_bike |
|                | dock_bike |
