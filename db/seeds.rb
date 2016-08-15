require_relative '../models'

gloss = Term.create(name: "Glossolalia", definition: "To speak in tongues", author: "A Kebert")
palin = Term.create(name: "Palindrome", definition: "A word or phrase that is identical forwards and backwards", author: "A Kebert")
auto = Term.create(name: "Autobot", definition: "A heroic transforming robot that opposes the Decepticons", author: "A Kebert")
decept = Term.create(name: "Decepticon", definition: "A malicious transforming robot that opposes the Autobots", author: "A Kebert")
megatron = Term.create(name: "Megatron", definition: "The leader of the Decepticons", author: "A Kebert")

words = Category.create(name: "Words about Words", subject_area: "Back End Engineering")
bots = Category.create(name: "Transformers", subject_area: "Back End Engineering")

gloss.categories = [words]
palin.categories = [words]
auto.categories = [bots]
decept.categories = [bots]
megatron.categories = [bots]
