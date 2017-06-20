Role.create!([
  {name: "admin"},
  {name: "staff"},
  {name: "students"}
])
User.create!([
  {first_name: "Karoli Kolokonyi", email: "karoli@kepler.org", role_id: 1, password_digest: "Kepler2017", last_name: nil},
  {first_name: "Karoli", email: "karoli.kolokonyi@gmail.com", role_id: 2, password_digest: "Kepler2017", last_name: nil},
  {first_name: "Obed", email: "obed@kepler.org", role_id: 3, password_digest: "Kampala", last_name: nil},
  {first_name: "Simon", email: "simon@kepler.org", role_id: 2, password_digest: "$2a$10$ovBmNrSidzIVA4lRkVMxwujOFpuh4.JfO3nE/zlUD175Y5IiKWRTe", last_name: "Niyomugenzi"}
])
