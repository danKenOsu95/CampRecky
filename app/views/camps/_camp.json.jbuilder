json.extract! camp, :id, :name, :theme, :location, :age_min, :age_max, :start_time, :end_time, :ext_end_time, :ext_start_time, :member_fee, :non_member_fee, :two_week, :lunch_fee, :created_at, :updated_at
json.url camp_url(camp, format: :json)
