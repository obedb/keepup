Post.create!([
  {title: "End of Year Partyyyy", description: "Bonanza", user_id: nil},
  {title: "Kepler Graduation Event", description: "it will take place this Samedi", user_id: nil},
  {title: "hhhhhjh", description: "jnhjkkljkl", user_id: nil}
])
Role.create!([
  {name: "admin"},
  {name: "staff"},
  {name: "students"},
  {name: "admin"},
  {name: "staff"},
  {name: "students"}
])
User.create!([
  {first_name: "Karoli Kolokonyi", email: "karoli@kepler.org", role_id: 1, password_digest: "Kepler2017", last_name: nil},
  {first_name: "Karoli Kolokonyi", email: "karoli@kepler.org", role_id: 1, password_digest: "Kepler2017", last_name: nil}
])
