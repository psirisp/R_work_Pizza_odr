odr_piz <- function() {
  
  print("Welcome to porpy pizza")
  print("What is your name?")
  
  cus_name <- readline("Type your name : ")
  
  id_stk_tpp_piz <- c(1, 2, 3, 4, 5, 6)
  
  stk_tpp_piz <- c("Mushroom", "Meat", "Pepporoni",
                   "Hawaiian", "Vegetarian",
                   "Seafood")
  
  stk_tpp_piz_df <- data.frame(id = id_stk_tpp_piz, pizza = stk_tpp_piz)
  
  id_stk_crst_piz <- c(1, 2, 3, 4, 5, 6)
  
  stk_crst_piz <- c("Crispy Thin", "Soft Pan", "Extreme Cheese",
                    "Sausage 1", "Sausage 2",
                    "Sausage & Cheese")
  
  stk_crst_piz_df <- data.frame(id = id_stk_crst_piz, pizza = stk_crst_piz)
  
  id_stk_dip_piz <- c(1, 2, 3, 4, 5, 6)
  
  stk_dip_piz <- c("Mayonnaise", "Thousand Island", "Bechamel",
                   "BBQ", "Pico de gallo",
                   "Alfredo")
  
  stk_dip_piz_df <- data.frame(id = id_stk_dip_piz, pizza = stk_dip_piz)
  
  ava_stk_crst_pizza <- stk_crst_piz_df[sample(nrow(stk_crst_piz_df), 4), ]
  
  ava_stk_tpp_pizza <- stk_tpp_piz_df[sample(nrow(stk_tpp_piz_df), 4), ]
  
  ava_stk_dip_pizza <- stk_dip_piz_df[sample(nrow(stk_dip_piz_df), 4), ]
  
  amt_piz <- 0
  atmp <- 0
  while ( amt_piz < 1 ) {
    while ( atmp < 1 ) {
      print("How many pizza would you like to order?")
      print("Maximum Per Order is 3")
      atmp <- atmp + 1
    }
    
    amt_piz1 <- readline("Type the number : ")
    
    amt_piz <- as.numeric(amt_piz1)
    
    print( amt_piz )
    
    if ( amt_piz < 4 & amt_piz > 0 ){
      break
    } else {
      print("Maximum Per Order is 3")
    }
  }
  
  while ( amt_piz > 0 ) {
    
    atmp_tpp <- 0
    while ( amt_piz > 0 ) {
      
      while (atmp_tpp < 1) {
        print("What kind of toppings do you want?")
        print(ava_stk_tpp_pizza)
        atmp_tpp <- atmp_tpp + 1
      }
      
      tpp_piz_odr <- readline("Type the number : ")
      
      valid_tpp <- match(tpp_piz_odr, ava_stk_tpp_pizza[,1])
      
      if (is.na(valid_tpp) == TRUE) {
        print("Out of stock")
        print("Please select one of the following")
        print(ava_stk_tpp_pizza)
      } else {
        break
      }
    }
    
    atmp_crst <- 0
    while ( amt_piz > 0 ) {
      
      while (atmp_crst < 1) {
        print("What kind of crust do you want?")
        print(ava_stk_crst_pizza)
        atmp_crst <- atmp_crst + 1
      }
      
      crst_piz_odr <- readline("Type the number : ")
      
      valid_crst <- match(crst_piz_odr, ava_stk_crst_pizza[,1])
      
      if (is.na(valid_crst) == TRUE) {
        print("Out of stock")
        print("Please select one of the following")
        print(ava_stk_crst_pizza)
      } else {
        break
      }
      
    }
    
    atmp_dip <- 0
    while ( amt_piz > 0 ) {
      
      while (atmp_dip < 1) {
        print("What kind of dipping sauces do you want?")
        print(ava_stk_dip_pizza)
        atmp_dip <- atmp_dip + 1
      }
      
      dip_piz_odr <- readline("Type the number : ")
      
      valid_dip <- match(dip_piz_odr, ava_stk_dip_pizza[,1])
      
      if (is.na(valid_dip) == TRUE) {
        print("Out of stock")
        print("Please select one of the following")
        print(ava_stk_dip_pizza)
      } else {
        break
      }
    }
    break
  }
  
  while ( amt_piz > 1) {
    
    atmp_tpp2 <- 0
    while ( amt_piz > 1 ) {
      
      while (atmp_tpp2 < 1) {
        print("What kind of toppings do you want for 2nd?")
        print(ava_stk_tpp_pizza)
        atmp_tpp2 <- atmp_tpp2 + 1
      }
      
      tpp_piz_odr2 <- readline("Type the number : ")
      
      valid_tpp2 <- match(tpp_piz_odr2, ava_stk_tpp_pizza[,1])
      
      if (is.na(valid_tpp2) == TRUE) {
        print("Out of stock")
        print("Please select one of the following")
        print(ava_stk_tpp_pizza)
      } else {
        break
      }
    }
    
    atmp_crst2 <- 0
    while ( amt_piz > 1 ) {
      
      while (atmp_crst2 < 1) {
        print("What kind of crust do you want for 2nd?")
        print(ava_stk_crst_pizza)
        atmp_crst2 <- atmp_crst2 + 1
      }
      
      crst_piz_odr2 <- readline("Type the number : ")
      
      valid_crst2 <- match(crst_piz_odr2, ava_stk_crst_pizza[,1])
      
      if (is.na(valid_crst2) == TRUE) {
        print("Out of stock")
        print("Please select one of the following")
        print(ava_stk_crst_pizza)
      } else {
        break
      }
    }
    
    atmp_dip2 <- 0
    while ( amt_piz > 1 ) {
      
      while (atmp_dip2 < 1) {
        print("What kind of dipping sauces do you want for 2nd?")
        print(ava_stk_dip_pizza)
        atmp_dip2 <- atmp_dip2 + 1
      }
      
      dip_piz_odr2 <- readline("Type the number : ")
      
      valid_dip2 <- match(dip_piz_odr2, ava_stk_dip_pizza[,1])
      
      if (is.na(valid_dip2) == TRUE) {
        print("Out of stock")
        print("Please select one of the following")
        print(ava_stk_dip_pizza)
      } else {
        break
      }
    }
    break
  }
  
  while ( amt_piz > 2) {
    
    atmp_tpp3 <- 0
    while ( amt_piz > 2 ) {
      
      while (atmp_tpp3 < 1) {
        print("What kind of toppings do you want for 3rd?")
        print(ava_stk_tpp_pizza)
        atmp_tpp3 <- atmp_tpp3 + 1
      }
      
      tpp_piz_odr3 <- readline("Type the number : ")
      
      valid_tpp3 <- match(tpp_piz_odr3, ava_stk_tpp_pizza[,1])
      
      if (is.na(valid_tpp3) == TRUE) {
        print("Out of stock")
        print("Please select one of the following")
        print(ava_stk_tpp_pizza)
      } else {
        break
      }
    }
    
    atmp_crst3 <- 0
    while ( amt_piz > 2 ) {
      
      while (atmp_crst3 < 1) {
        print("What kind of crust do you want for 3rd?")
        print(ava_stk_crst_pizza)
        atmp_crst3 <- atmp_crst3 + 1
      }
      
      crst_piz_odr3 <- readline("Type the number : ")
      
      valid_crst3 <- match(crst_piz_odr3, ava_stk_crst_pizza[,1])
      
      if (is.na(valid_crst3) == TRUE) {
        print("Out of stock")
        print("Please select one of the following")
        print(ava_stk_crst_pizza)
      } else {
        break
      }
    }
    
    atmp_dip3 <- 0
    while ( amt_piz > 2 ) {
      
      while (atmp_dip3 < 1) {
        print("What kind of dipping sauces do you want for 3rd?")
        print(ava_stk_dip_pizza)
        atmp_dip3 <- atmp_dip3 + 1
      }
      
      dip_piz_odr3 <- readline("Type the number : ")
      
      valid_dip3 <- match(dip_piz_odr3, ava_stk_dip_pizza[,1])
      
      if (is.na(valid_dip3) == TRUE) {
        print("Out of stock")
        print("Please select one of the following")
        print(ava_stk_dip_pizza)
      } else {
        break
      }
    }
    break
  }
  
  id_out <- c(1, 2)
  out_name <- c("Delivery", "Picking up")
  
  out_df <- data.frame(id_out, out_name)
  
  print("Do you want us to ship your pizza or pick up by yourself?")
  print("1.Delivery 2.Picking up")
  out <- readline("Type the number : ")
  
  if (amt_piz == 1) {
    print(paste("Okay", cus_name, "your pizza is", ava_stk_tpp_pizza[tpp_piz_odr,2]))
    print(paste(ava_stk_crst_pizza[crst_piz_odr,2], ava_stk_dip_pizza[dip_piz_odr,2]))
    print(out_df[out,2])
    print("Thank you for purchasing!")
  } else if (amt_piz == 2) {
    print(paste("Okay", cus_name))
    print("1st pizza")
    print(paste("your pizza is", ava_stk_tpp_pizza[tpp_piz_odr,2]))
    print(paste(ava_stk_crst_pizza[crst_piz_odr,2], ava_stk_dip_pizza[dip_piz_odr,2]))
    print("2nd pizza")
    print(paste("your pizza is", ava_stk_tpp_pizza[tpp_piz_odr2,2]))
    print(paste(ava_stk_crst_pizza[crst_piz_odr2,2], ava_stk_dip_pizza[dip_piz_odr2,2]))
    print(out_df[out,2])
    print("Thank you for purchasing!")
  } else if (amt_piz == 3) {
    print(paste("Okay", cus_name))
    print("1st pizza")
    print(paste("your pizza is", ava_stk_tpp_pizza[tpp_piz_odr,2]))
    print(paste(ava_stk_crst_pizza[crst_piz_odr,2], ava_stk_dip_pizza[dip_piz_odr,2]))
    print("2nd pizza")
    print(paste("your pizza is", ava_stk_tpp_pizza[tpp_piz_odr2,2]))
    print(paste(ava_stk_crst_pizza[crst_piz_odr2,2], ava_stk_dip_pizza[dip_piz_odr2,2]))
    print("3rd pizza")
    print(paste("your pizza is", ava_stk_tpp_pizza[tpp_piz_odr3,2]))
    print(paste(ava_stk_crst_pizza[crst_piz_odr3,2], ava_stk_dip_pizza[dip_piz_odr3,2]))
    print(out_df[out,2])
    print("Thank you for purchasing!")
  }
}
