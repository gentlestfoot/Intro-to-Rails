# Datasets
This project has the neighbourhoods of Winnipeg and the 311 requests and trees contained in them.

## [Boundaries of Neighbourhood Characterization Areas](https://data.winnipeg.ca/City-Planning/Neighbourhood/fen6-iygi)
Contains polygons of each neighbourhood area in Winnipeg.

Columns:
- the_geom
- name
- id

I will pull the name and polygons (from the_geom column) into a table named Neighbourhoods.

Neighbourhoods will have one to many relationships with trees and requests.

## [311 Service Request](https://data.winnipeg.ca/Contact-Centre-311/311-Service-Request/4her-3th5)
Contains all service requests received by 311 in Winnipeg.

Columns:
- Date
- Service Area
- Service Request
- Ward
- Neighbourhood
- Location 1

I will pull the date, service area, service request, neighbourhood, and location into a table named Requests. Requests will be linked to the neighbourhood they exist in.

## [Tree Inventory](https://data.winnipeg.ca/Parks/Tree-Inventory/hfwk-jp4h)
Contains information about public trees in Winnipeg.

Columns:
- Tree ID
- Botanical Name
- Common Name
- Electoral Ward
- Neighbourhood
- Diameter at Breast Height
- Park
- Location Class
- Property Type
- Street
- Street From
- Street To
- X
- Y
- DED Tag Number
- Location

I will pull the common name, neighbourhood, diameter, and location into a table named Trees. Trees will be linked to the neighbourhood they exist in.