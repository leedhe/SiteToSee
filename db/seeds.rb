Collection.create!([
  {site_name: "again", site_id: nil, site_url: "again.com", c_name: nil},
  {site_name: "asdf", site_id: nil, site_url: "asdf.com", c_name: nil},
  {site_name: "joe", site_id: nil, site_url: "joe.com", c_name: nil},
  {site_name: "joe", site_id: nil, site_url: "joe.com", c_name: nil}
])
User.create!([
  {name: "mihira", email: "mihira@mihira.com", password_digest: "$2a$10$dV1TAw0F61eKG945E.0AW.g59S58Et8HFIokmJiqpxdV9TMELdjUW", user_id: nil},
  {name: "dahee", email: "me@me.com", password_digest: "$2a$10$hJF0d/nAUMlBqZxJMduW/OR7s/8vjCi5arL53Vn3VaA/1khTGam.O", user_id: nil}
])
UserCollection.create!([
  {user_id: nil, collection_id: 1},
  {user_id: nil, collection_id: 1}
])
