class Example < ApplicationRecord

  # setting the XML feed
  doc = open("http://web.mta.info/status/ServiceStatusSubway.xml")

  # converting doc to a Ruby hash object
  response = Crack::XML.parse(doc)

  # converting response hash to the relevant nested status elements

  train_status = response["Siri"]["ServiceDelivery"]["SituationExchangeDelivery"]["Situations"]["PtSituationElement"]

  # getting the Line that will be affected.  Should iterate across and get additional details
  train_status.each do |situation|
    situation["Affects"]["VehicleJourneys"]["AffectedVehicleJourney"].each do |line|
      puts line["LineRef"].split.join(" ")
    end
  end
  
end
