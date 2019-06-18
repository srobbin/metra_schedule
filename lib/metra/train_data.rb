module MetraSchedule
  module TrainData
    attr_reader :LINES

    ### Stations MUST be listed in outbound direction for the parser to function correctly!
    LINES = {
    :up_nw => {
      :name => "Union Pacific Northwest", 
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/up-nw/schedule.full.html',
      :stations => [
        :ogilve,
        :clybourn,
        :irving_park,
        :jefferson_park,
        :gladstone_park,
        :norwood_park,
        :edison_park,
        :park_ridge,
        :dee_road,
        :des_plaines,
        :cumberland,
        :mount_prospect,
        :arlington_heights,
        :arlington_park,
        :palatine,
        :barrington,
        :fox_river_grove,
        :cary,
        :pingree_road,
        :crystal_lake,
        :woodstock,
        :mchenry,
        :harvard
      ],
      :tables => {:weekday_inbound => 0..1, :saturday_inbound => 2, :sunday_inbound => 3, \
        :weekday_outbound => 4..6, :saturday_outbound => 7, :sunday_outbound => 8 }
    },
    :up_n => {
      :name => "Union Pacific North",
      :url => 'https://srobbin.com/metra/up-n/schedule.full.html',
      :stations => [
        :ogilve,
        :clybourn,
        :ravenswood,
        :rogers_park,
        :evanston_main_street,
        :evanston_davis_street,
        :evanston_central_street,
        :wilmette,
        :kenilworth,
        :indian_hill,
        :winnetka,
        :hubbard_woods,
        :glencoe,
        :braeside,
        :ravinia_park,
        :ravinia,
        :highland_park,
        :highwood,
        :fort_sheridan,
        :lake_forest,
        :lake_bluff,
        :great_lakes,
        :north_chicago,
        :waukegan,
        :zion,
        :winthrop_harbor,
        :kenosha
      ],
      :tables => {:weekday_inbound => 0..2, :saturday_inbound => 3, :sunday_inbound => 4, \
        :weekday_outbound => 5..7, :saturday_outbound => 8, :sunday_outbound => 9 }
    },
    :ncs => {
      :name => "North Central Service",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/ncs/schedule.full.html',
      :stations => [
        :union_station,
        :western_avenue,
        :river_grove,
        :franklin_park,
        :schiller_park,
        :rosemont,
        :ohare_transfer,
        :prospect_heights,
        :wheeling,
        :buffalo_grove,
        :prairie_view,
        :vernon_hills,
        :mundelein,
        :libertyville,
        :grayslake,
        :round_lake_beach,
        :lake_villa,
        :antioch
      ],
      :tables => {:weekday_inbound => 0, :weekday_outbound => 1 }
    },
    :md_w => {
      :name => "Milwaukee District West",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/md-w/schedule.full.html',
      :stations => [
        :union_station,
        :western_avenue,
        :grand_cicero,
        :hanson_park,
        :galewood,
        :mars,
        :mont_clare,
        :elmwood_park,
        :river_park,
        :franklin_park,
        :mannheim,
        :bensenville,
        :wood_dale,
        :itasca,
        :medinah,
        :roselle,
        :schaumburg,
        :hanover_park,
        :bartlett,
        :national_street,
        :elgin,
        :big_timber
      ],
      :tables => {:weekday_inbound => 0..1, :saturday_inbound => 2, :sunday_inbound => 3, \
        :weekday_outbound => 4..5, :saturday_outbound => 6, :sunday_outbound => 7 }
    },
    :md_n => {
      :name => "Milwaukee District North",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/md-n/schedule.full.html',
      :stations => [
        :union_station,
        :western_avenue,
        :healy,
        :grayland,
        :mayfair,
        :forest_glen,
        :edgebrook,
        :morton_grove,
        :golf,
        :glenview,
        :glen_of_north_glenview,
        :northbrook,
        :lake_cook_road,
        :deerfield,
        :lake_forest,
        :libertyville,
        :prairie_crossing_libertyville,
        :grayslake,
        :round_lake,
        :long_lake,
        :ingleside,
        :fox_lake
      ],
      :tables => {:weekday_inbound => 0..1, :saturday_inbound => 2, :sunday_inbound => 3, \
        :weekday_outbound => 4..5, :saturday_outbound => 6, :sunday_outbound => 7 }
    },
    :up_w => {
      :name => "Union Pacific West",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/up-w/schedule.full.html',
      :stations => [
        :ogilve,
        :kedzie,
        :oak_park,
        :river_forest,
        :maywood,
        :melrose_park,
        :bellwood,
        :berkeley,
        :elmhurst,
        :villa_park,
        :lombard,
        :glen_ellyn,
        :college_avenue,
        :wheaton,
        :winfield,
        :west_chicago,
        :geneva,
        :la_fox,
        :elburn
      ],
      :tables => {:weekday_inbound => 0..1, :saturday_inbound => 2, :sunday_inbound => 3, \
        :weekday_outbound => 4..5, :saturday_outbound => 6, :sunday_outbound => 7 }
    },
    :bnsf => {
      :name => "BNSF Railway",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/bnsf/schedule.full.html',
      :stations => [
        :union_station,
        :halsted,
        :western_avenue,
        :cicero,
        :lavergne,
        :berwyn,
        :harlem_ave,
        :riverside,
        :hollywood,
        :brookfield,
        :congress_park,
        :lagrange_road,
        :lagrange_stone_avenue,
        :western_springs,
        :highlands,
        :hinsdale,
        :west_hinsdale,
        :clarendon_hills,
        :westmont,
        :fairview_avenue,
        :downers_grove_main_street,
        :belmont,
        :lisle,
        :naperville,
        :route_59,
        :aurora
      ],
      :tables => {:weekday_inbound => 0..2, :saturday_inbound => 3, :sunday_inbound => 4, \
        :weekday_outbound => 5..7, :saturday_outbound => 8, :sunday_outbound => 9 }
    },
    :hc => {
      :name => "Heritage Corridor",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/hc/schedule.full.html',
      :stations => [
        :union_station,
        :summit,
        :willow_springs,
        :lemont,
        :lockport,
        :joliet
      ],
      :tables => {:weekday_inbound => 0, :weekday_outbound => 1 }
    },
    :sws => {
      :name => "Southwest Service",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/sws/schedule.full.html',
      :stations => [
        :union_station,
        :wrightwood,
        :ashburn,
        :oak_lawn,
        :chicago_ridge,
        :worth,
        :palos_heights,
        :palos_park,
        :orland_park_143rd_street,
        :orland_park_153rd_street,
        :orland_park_179th_street,
        :new_lenox_laraway_road,
        :manhattan
      ],
      :tables => {:weekday_inbound => 0, :saturday_inbound => 1, :weekday_outbound => 2, :saturday_outbound => 3}
    },
    :ri => {
      :name => "Rock Island District",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/ri/schedule.full.html',
      :stations => [
        :chicago_lasalle_station,
        :gresham,
        :longwood,
        :washington_heights,
        :brainerd,
        :beverly_hills_91_street,
        :beverly_hills_95_street,
        :beverly_hills_99_street,
        :beverly_hills_103_street,
        :beverly_hills_107_street,
        :morgan_park_111_street,
        :morgan_park_115_street,
        :street_119,
        :street_123,
        :prairie_street,
        :blue_island,
        :robbins,
        :midlothian,
        :oak_forest,
        :tinley_park,
        :tinley_park_80_avenue,
        :hickory_creek,
        :mokena,
        :new_lenox,
        :joliet
      ],
      :tables => {:weekday_inbound => 0..2, :saturday_inbound => 3, :sunday_inbound => 4, \
        :weekday_outbound => 5..7, :saturday_outbound => 8, :sunday_outbound => 9 }
    },
    :me => {
      :name => "Metra Electric District",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/me/schedule.full.html',
      :stations => [
        :milennium_station,
        :van_buren_street,
        :museum_campus,
        :street_18,
        :mccormick_place,
        :street_27,
        :street_47,
        :street_51_53,
        :street_55_56_57,
        :street_59,
        :street_63,
        :street_75,
        :street_79,
        :street_83,
        :street_87,
        :street_91,
        :street_95,
        :street_103,
        :street_107,
        :street_111,
        :street_115,
        :riverdale,
        :ivanhoe,
        :street_147,
        :harvey,
        :hazel_crest,
        :calumet,
        :homewood,
        :flossmoor,
        :olympia_fields,
        :street_211,
        :matteson,
        :richton_park,
        :university_park,
        :stony_island,
        :bryn_mawr,
        :south_shore,
        :windsor_park,
        :street_79,
        :street_83,
        :street_87,
        :street_93,
        :state_street,
        :stewart_ridge,
        :west_pullman,
        :racine,
        :ashland,
        :burr_oak,
        :blue_island
      ],
      :tables => {:weekday_inbound => 0..5, :saturday_inbound => 6..9, :sunday_inbound => 10..11, \
        :weekday_outbound => 12..17, :saturday_outbound => 18..21, :sunday_outbound => 22..23 }
    }
  }
  end
end
