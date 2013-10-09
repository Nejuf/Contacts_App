# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost:3000',
#   path: '/contacts'
# ).to_s
#
# puts RestClient.post(url, {contact: {name: "Joe", email: "j@gmail.com", user_id: 1}} )
# puts RestClient.post(url, {contact: {name: "Bob", email: "b@gmail.com", user_id: 1}} )
# puts RestClient.post(url, {contact: {name: "Joe", email: "j@gmail.com", user_id: 2}} )



url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost:3000',
  path: '/users/2/contacts'
).to_s

puts RestClient.get(url)