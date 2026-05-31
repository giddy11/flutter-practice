main(){

  Map<String, String> countryCodes = {
    "US": "United State",
    "CA": "Canada",
    "UK": "United Kingdom",
    "IN": "India",
  };

  print("Country for US: ${countryCodes["US"]}");

  //Adding a new pair
  countryCodes["NGN"] = "Nigeria";

  print(countryCodes);

  print("Before Removing");

  //Removing a country code
  countryCodes.remove("NGN");

  print(countryCodes);

  //checking if a key exist in the map
  bool isExist = countryCodes.containsKey("NGN");

  if (isExist){
    print("Nigeria exist in the list");
  } else{
    print("Nigeria doesn't exist");
  }

  print("The End");

  //Iterating through the map
  countryCodes.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}