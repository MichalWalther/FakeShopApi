package examples.fakeShopApi;

import com.intuit.karate.junit5.Karate;

class FakeShopRunner {

    @Karate.Test
    // Download the list of products from the "Laptop" category and save it to a json file
    Karate getProductList() {
        return Karate.run("getProductList").relativeTo(getClass());
    }
    // Log in and clear the basket
    @Karate.Test
    Karate emptyCart() {
        return Karate.run("emptyCart").relativeTo(getClass());
    }
    // Add products from the json file to the cart
    @Karate.Test
    Karate addToCart() {
        return Karate.run("addToCart").relativeTo(getClass());
    }
    // Download products from the basket and check if the prices are correct
    @Karate.Test
    Karate getCarts() {
        return Karate.run("getCarts").relativeTo(getClass());
    }
    // Deleting the contents of the basket
    @Karate.Test
    Karate emptyCartToEnd() {
        return Karate.run("emptyCart").relativeTo(getClass());
    }

}
