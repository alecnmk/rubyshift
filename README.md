RubyShift Workshop summary
==========
*Hello dear participants! We're on results compilation right now. This repo will aggreagte all teams effort, comments and ideas.*

# TEAM 1 #

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
Map is rendered, visualisation is present, but there's no color difference
Distance calculation is incorrect (several crucial points seen)

# TEAM 2 #

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

# TEAM 3 #

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

# TEAM 4 #

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
- Application was bound to rails 1.8 for some reason. Rails script file should use environment ruby.


# TEAM 5 #

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
- choose to model all things down to concrete person

# TEAM 6 #

Team Members
----------
- Marat Kamenshikov
- Yaroslav Lazor
- Dmitriy Kasimtsev
- Alexander Hizha
- Pavel Chipiga

Notes
----------
- Rendered the map with all the stations
- Learned how to calculate distances between 2 points (interface for this issue haven't been found in repo)
- Great brutforce implementation: unix way. But actually, curl may work better, since you won't run into redirects, and wouldn't need to use files for access.
- Range of get_random_people_entries is way too high
- Not clear, how the connections are processed: you have people_left, people_right and trains_count. What does trains_count represent?.. 
- For some reason, problem data is repeated (e.q. subway_data.rb and welcome_controller). Repeated code
- Something that's called connection_info is calculation of the center between 2 stations. Not quite clear, what's a purpose of it. For some reason this connection info is being passed as "trains" instance variable. Naming inconsistency.
- count_stations_to_the_right and count_stations_to_the_left are undefined

Original Repo:
----------
[http://dl.dropbox.com/u/3448205/shift-code.tgz](http://dl.dropbox.com/u/3448205/shift-code.tgz)

# TEAM 7 #

Team Members
----------

*Waiting for results from you guys*

# TEAM 8 #

Team Members
----------

*Waiting for results from you guys*

