# munich = {
#   "population" => 1200000,
#     # KEY          # VALUE
#    "monument" => "Frauenkirche", 
#    "state" => "Bavaria",
#    "clubs" => [
#     {
#       "name" => "FC Bayern",
#       "president" => "Hoenes",
#       "members" => 500000
#     },
#     {
#       "name" => "1860",
#       "president" => "Müller",
#       "members" => 200000
#     }
#    ]
# }

# munich["clubs"].each do |club|
#   puts "#{club["name"]}'s president is #{club["president"]}"
# end
          # ARRAY # HASH
# CRUD with Hashes

# READ
# p munich["population"]
# munich["mayor"] # NIL

# CREATE
# munich["weather"] = "It's been good"

# UPDATE
# munich["population"] += 50000

# DELETE
# munich.delete("monument")

# munich.each do |key, value|
#   puts "Munich's #{key} is #{value}"
# end

# p munich.key?("mayor")
# p munich.key?("monument")

# p munich.keys
# p munich.values

munich = {
  population: 1200000,
    # KEY          # VALUE
   monument: "Frauenkirche", 
   state: "Bavaria",
   clubs: [
    {
      name: "FC Bayern",
      president: "Hoenes",
      members: 500000
    }
   ]
}

# p munich["population"] # nil
# p munich[:population] 

# => <h1>Hello world</h1>

def tag(tag_name, content, attributes = {})
  attributes_strings = attributes.map do |key, value|
    " #{key}='#{value}'"
  end
  joined_attributes = attributes_strings.join
  "<#{tag_name} #{joined_attributes}>#{content}</#{tag_name}>"
end
p tag("h1", "Hello world")
p tag("h1", "Hello world", { class: "bold" })
p tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })