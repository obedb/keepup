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
