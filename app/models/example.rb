class Example < ApplicationRecord

# setting the XML feed
doc = open("http://web.mta.info/status/ServiceStatusSubway.xml")

# converting doc to a Ruby hash object
response = Crack::XML.parse(doc)

# converting response hash to the relevant nested status elements

train_status = response["Siri"]["ServiceDelivery"]["SituationExchangeDelivery"]["Situations"]["PtSituationElement"]

# getting the Line that will be affected.  Should iterate across and get additional details
train_status.first["Affects"]["VehicleJourneys"].first.second.first["LineRef"].split.join(" ")

end
