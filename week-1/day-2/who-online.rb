def who_is_online(friends)
    h = {}
    friends.map { |i|
      if i["status"] == "online"
        st = i["last_activity"] > 10 ? "away" : "online"
        h[st] = [] if h[st].nil?
        h[st].push(i["username"])
      else
        h["offline"] = [] if h["offline"].nil?
        h["offline"].push(i["username"])
      end
    }
    h
  end