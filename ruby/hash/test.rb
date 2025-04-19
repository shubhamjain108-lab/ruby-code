users = {
  user1: { name: "John", city: "New York" },
  user2: { name: "Alice", city: "Los Angeles" },
  user3: { name: "Bob", city: "Chicago" }
}

p users
p users.values
p users.keys
p users.values.map { |v| v[:city] }.sort_by(&:length)



hash1 = { a: { x: 1, y: 2 } }
hash2 = { a: { z: 3 }, b: { w: 4 } }

p hash1.merge(hash2) { |k, ov, nv| ov.merge(nv) }
