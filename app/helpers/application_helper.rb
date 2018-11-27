module ApplicationHelper
    def time_alive(creature)
    time_alive = Time.now - creature.created_at.to_time
    if time_alive > 3600
      day = (time_alive / 1.day).to_i
      if day >= 7
        week = (time_alive / 1.week).to_i
      end
    end
  end
end
