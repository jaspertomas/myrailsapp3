class Setting < ActiveRecord::Base
  def Setting.fetchAllAsHash()
    settings = {}
    Setting.all.each do |s|
      settings[s.name]=s
    end
    return settings
  end

end
