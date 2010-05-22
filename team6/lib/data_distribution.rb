class Distribution

  def generate
    data = {}
    subway_line_data=count_subway_line_length

    6.up_to(23) do |hour|
      connection_data={}
      station_data={}

      data[hour]={:station => station_data, :connection => connection_data}
      
      people_entered = get_random_people_entries(hour)

      station_info=get_station_info
      distance=0
      
      0.upto(station_info.length-2) do |i|
        current_station = station_info[i]
        
        length=subway_line_data[current_station[:color]]
        
        if next_stations[:color] != current_station[:color]
          distance=0
          next          
        end
        
        distance +=1
      end


      stations.each do |station|
        stations_to_the_left=count_stations_to_the_left(station)
        stations_to_the_right=count_stations_to_the_right(station)
      end
    end
  end
  
  def count_subway_line_length
    get_station_info.inject({}){|data, station| data[station[:color]]||=0; data[station[:color]]+=1;data}
  end
  
  def distribute station, direction, people_to_distribute      
    
  end
  
  # returns people distribution per hour
  def get_random_people_entries hour
    b=2050 # base distribution
    r=1000 # base random time
    m = case hour # distribution multiplier
      when 10...17,19...20 : 1
      when 6...7,20...24 : 0.33
      when 9...10,17...18 : 1.5
      when 7...9,18...19 : 2        
    end
    b*m-(rand(r*m)-r*m/2)
  end


  DATA = {
    10 => {
      :station => { 
        'Zhitomirskaya' => {:people_entered => 1000, :people_exited => 1000 },
        'Svyatoshin' => {:people_entered => 1000, :people_exited => 1000 }
       },
      :connection => {
        'Zhitomirskaya-Svyatoshin' => { :people_left => 1000, :people_right => 1000, :trains_count => 3 }
      }
    }
  }

end
