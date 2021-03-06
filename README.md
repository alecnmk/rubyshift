RubyShift Workshop summary
==========

# The results! #

<img src="http://github.com/alecnmk/rubyshift/raw/master/results.png" alt="results table"/>

And the winner is Team 4!
Second prize goes to Team 2!
Third place took Team 6!

Nevertheless, you all done great job. We understand that definition of quest was not clear in many places. It was hard to concentrate on the most important things. We learned our lesson and next time we will fix it. We hope that everybody had a great time. We all realized that programming is not just putting web views together. We loved to be nearby and watch your work. It was really exciting adventure!

It was also hard quest for us to review all code you wrote. To treat your decisions well and to find the winner. If you think that there any place we made a mistake with our judging - please don't hesitate to come up with your comments (google group: [http://groups.google.com/group/ruby-shift-workshop](http://groups.google.com/group/ruby-shift-workshop)).

Thank you all again for participating! Thank you for your impact in development of our small but brave Ruby community! We really hope that the next time we announce next contest you won't have any doubts to accept a challenge!

Workshop Goals
==========
[http://furious-rain-32.heroku.com/map/definition?pwd=r0U6y](http://furious-rain-32.heroku.com/map/definition?pwd=r0U6y)

## TEAM 1 ##

Team Members
----------
- Igor Sokolov
- Pirogovskiy Artur
- Alexander Paladiy
- Dmitry Samoylov
- Pavel Mitin

Original Repo
----------
[http://github.com/paladiy/Metro](http://github.com/paladiy/Metro)

Notes
----------
- Map is rendered, visualisation is present, but there's no color difference
- Distance calculation is incorrect (several crucial points seen)
- Click on each marker on map generates error. find_station_by_id is not returning anything, because literal is compared to integer
- Actually, calculate_distance contains quite a lot of errors, i've tried to fix them, just to prove the idea is correct, but it seem to be not
- you're the only one team that put stations data in db/seed and not in code :) well done
- Idea of movement direction is very good
- Models look pretty good, but speed of train that's equal to 50K mph (btw, you think mph are meters?..) is way too high :) you turn out to have 2 997 000 km after "run"
- Idea with ticks is good. It would be great thou to have it configurable (heartbeat idea)
- Move_at: wait_time is always 0. But that's good thou you guys thought of it. In move_at you should have put time_delta - wait_time in brackets. Otherwise you end up substituting time from distance, which is incorrect.
- We figured out how to run your model.. but without visualisation part it's useless. Trains are moving but all you had in mind was not fully implemented.

## TEAM 2 ##

Team Members
----------
- Stanislav Pogrebnyak
- Mihail Skvirskiy
- Dmitriy Stumilenko
- Evgeniy Solovyov
- Roman Babenko

Original Repo:
----------
[http://github.com/cthulhu/rubyshift_t2](http://github.com/cthulhu/rubyshift_t2)

Notes
----------
- Rendered the map with all the stations (with color-based separation)
- Learnt how to calculate distances between stations, with visualization
- Calculation of number of trains by given time is present and covered with test
- Used Geokit-rails and Y4MR
- Nice models, but static number of people
- Number of people, wait minutes, trains number is calculated, but not visualized
- Nicely built application, everything is clearly defined
- Tests are present for station: people count and wait minutes

## TEAM 3 ##

Team Members
----------
- Konstantin Alekseev
- Nikolay Simonov
- Tatyana Kutsenko
- Pavel Gorbokon
- Ivan Cherevko

Original Repo:
----------
[http://github.com/apostlion/kievsub](http://github.com/apostlion/kievsub)

Notes
----------
- root route wasn't bound
- experienced problems with google_geocode, nokogiri and rc-rest.. they weren't configured in rails env
- application finally working but not functional. None of tasks are fully complete

## TEAM 4 ##

Team Members
----------
- Sergei Baluk
- Vyacheslav Shinkarenko
- Ivan Tsehmistro
- Antono Vasilyev
- Vladimir Oleynik

Original Repo:
----------
[http://github.com/vova/cnc](http://github.com/vova/cnc)

Notes
----------
- application working without any tricks, great
- map displaying all stations
- map visualize train movements
- distances between stations calculated but not visualized
- nice calculation of the base people number: 1550 + rand(1000). That's going to give pretty good representation.
- any train could be found on demand
- very original approach used for state of trains handling (timestamps of last requested state)
- used Rails 3 :)
- ruby and JS code is almost clean, well done
- configurable velocity
- great representation of rush, mild and non-working hours, and time selector (total_people_at)
- Trains are not stopping on stops, they continue to move along. Todo handle stops noticed :)
- It's not quite clear, whether the idea was for trains to be added manually, or, after the calculation of number of people, they would be added automatically.
- Travelled distance should will be growing eternally. Most likely, a good idea would be to make a direction flag, and limit max growth of the travelled distance to line length. The overall idea is very good thou.
- Application was bound to ruby 1.8 for some reason. Rails script file should use environment ruby.
- Specs are present, good test suites for subway load. But that's all that's tested thou.

## TEAM 5 ##

Team Members
----------
- Ruslan Bondarev
- Alexander Lockshyn
- Artem Kramarenko
- Dmitry Larkin
- Igor Afonov (left)

Original Repo:
----------
[http://github.com/railsware/rubyshift_workshop](http://github.com/railsware/rubyshift_workshop)

Notes
----------
- only one of target problems are solved
- almost no visual part.. only empty map is displayed
- model looks like almost complete but we've doubts that all this can be handled without extra large cluster with parallel computations. Also we suppose objects decomposition was made with wrong projection of what should be modeled and what is not. Model contains to many details that were not necessary for problem solution. We can discuss it if there are reasonable objections.
- heartbeat idea is good. actually, when doing emulation, it's great to have configurable params for everything. I'd say this team got this concept right!

## TEAM 6 ##

Team Members
----------
- Marat Kamenshikov
- Yaroslav Lazor
- Dmitriy Kasimtsev
- Alexander Hizha
- Alex Baranov

Notes
----------
- Rendered the map with all the stations
- Learned how to calculate distances between 2 points (interface for this issue haven't been found in repo)
- Great brutforce implementation: unix way. But actually, curl may work better, since you won't run into redirects, and wouldn't need to use files for access.
- Range of get_random_people_entries is way too high
- Not clear, how the connections are processed: you have people_left, people_right and trains_count. What does trains_count represent?..
- For some reason, problem data is repeated (e.q. subway_data.rb, distance.rb and welcome_controller). Repeated code
- Something that's called connection_info is calculation of the center between 2 stations. Not quite clear, what's a purpose of it. For some reason this connection info is being passed as "trains" instance variable. Naming inconsistency.
- count_stations_to_the_right and count_stations_to_the_left are undefined

Original Repo:
----------
[http://dl.dropbox.com/u/3448205/shift-code.tgz](http://dl.dropbox.com/u/3448205/shift-code.tgz)

## TEAM 7 ##

*Waiting for results from you guys*

Team Members
----------

## TEAM 8 ##

Team Members
----------
- Yuriy Drobyanskiy
- Vitaliy Zheludkov
- Dmitry Shein
- Pavel Chipiga

Notes
----------
- Map is rendered, visualisation. No color separation. All stations are marked with one color.
- Distance calculation with visualtization is present
- Poulating DB from seeds
- Clear code, clear model, readable and understandable

Original Repo:
----------
[http://github.com/chipiga/metro](http://github.com/chipiga/metro)
