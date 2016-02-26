
university_list = 
  "Berkeley",
  "Los Angeles",
  "San Diego",
  "Davis",
  "Irvine",
  "Santa Barbara",
  "Santa Cruz",
  "Riverside",
  "Merced"


university_list.each do |name|
  University.create(name: name)
end

cafe_list =
  ["Blue Door", 1],
  ["FSM", 1],
  ["Milano", 1],
  ["Philz", 1],
  ["Strada", 1],
  ["MLK", 1],
  ["Kerckhoff", 2],
  ["Untitled", 2],
  ["SEAS", 2],
  ["Northern Lights", 2],
  ["Hammer", 2],
  ["Novel", 2]




cafe_list.each do |name, university|
  Coffeeshop.create(name: name, university_id: university)
end

# user_list = 
#   ["clb_chen@yahoo.com", "calebchen", "password"],
#   ["jessie@gmail.com", "jessiehong", "password"]

# user_list.each do |email, username, password|
#   User.create(email: email, username: username, password_digest: password)
# end



