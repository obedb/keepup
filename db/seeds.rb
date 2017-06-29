
Conversation.create!([
  {recipient_id: 1, sender_id: 2}
])
User.create!([
  {first_name: "Eugene", email: "eugene.niyitanga2015@kepler.org", role_id: nil, password_digest: "$2a$10$hQ5.6UyWf1lDT70/zskWPeYVYndqdfmFsxwSDg5U6Qp6jt1bRAQee", last_name: "Niyitanga", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  {first_name: "Jean Luc", email: "jeanluc.abayo2015@kepler.org", role_id: nil, password_digest: "$2a$10$bEAOOKlL9eLKendyxJ.U/.C4wDTzp52w.UGudib2gGUD0FGiMm6wO", last_name: "Abayo", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil}
])
Message.create!([
  {body: "Hi", conversation_id: 1, user_id: 2},
  {body: "How are you?", conversation_id: 1, user_id: 1},
  {body: "How far are you??", conversation_id: 1, user_id: 2},
  {body: "Still struggling", conversation_id: 1, user_id: 1}
])

User.create!([
  {first_name: "Karoli Kolokonyi", email: "karoli@kepler.org", role_id: 1, password_digest: "Kepler2017", last_name: nil},
  {first_name: "Karoli", email: "karoli.kolokonyi@gmail.com", role_id: 2, password_digest: "Kepler2017", last_name: nil},
  {first_name: "Obed", email: "obed@kepler.org", role_id: 3, password_digest: "Kampala", last_name: nil},
  {first_name: "Simon", email: "simon@kepler.org", role_id: 2, password_digest: "$2a$10$ovBmNrSidzIVA4lRkVMxwujOFpuh4.JfO3nE/zlUD175Y5IiKWRTe", last_name: "Niyomugenzi"},
  {first_name: "jeanmonet", email: "jeanmonet@kepler.org", role_id: 2, password_digest: "$2a$10$V5BC.fPBeflDsPdLQltiKuMLpfvLjTFjINSCrTxrEFyUVRfXgJJqe", last_name: "Ngenzi"},
  {first_name: "jeanmonet", email: "jeanmonet@kepler.org", role_id: 2, password_digest: "$2a$10$Yri0Y5JlZH/bDkRCRC.Xq.qfmpjfjWt06bxRq65szJJK4xOFseOnK", last_name: "Ngenzi"}
])
Role.create!([
  {name: "admin"},
  {name: "staff"},
  {name: "students"}
])

