### 💡 Challenge 4: E-Commerce System with JSON Data 🛒 
```
{
  "products": [
    {
      "id": "1",
      "name": "Smartphone",
      "price": 699.99,
      "quantity": 50,
      "type": "Electronics",
      "warrantyPeriod": 24,
      "color": "Black",
      "features": [
        {
          "featureName": "Screen Size",
          "value": "6.1 inches"
        },
        {
          "featureName": "Battery Life",
          "value": "24 hours"
        },
        {
          "featureName": "Camera",
          "value": "12MP"
        }
      ]
    },
    {
      "id": "2",
      "name": "Laptop",
      "price": 999.99,
      "quantity": 30,
      "type": "Electronics",
      "warrantyPeriod": 12,
      "color": "Silver"
    },
    {
      "id": "3",
      "name": "T-Shirt",
      "price": 19.99,
      "quantity": 100,
      "type": "Clothing",
      "size": "M",
      "material": "Cotton"
    },
    {
      "id": "4",
      "name": "Jeans",
      "price": 39.99,
      "quantity": 75,
      "type": "Clothing",
      "size": "L",
      "material": "Denim"
    }
  ]
}

```
**Challenge Requirements**

1. Create Dart Models
2. Define Dart classes to model the JSON data. You should create:
    - A `Product` base class with common properties: `id`, `name`, `price`, and `quantity`.
    - Two subclasses `Electronics` and `Clothing` that extend `Product` and include additional properties specific to each type (`warrantyPeriod` for `Electronics` and `size` for `Clothing`).
    
3. JSON Parsing
4. Implement functions to:
    - Parse the JSON data into Dart objects.
    - Convert Dart objects back to JSON format.
5. Functions to Interact with Data
6. Implement the following functions:
    - `getProductById(String id)`: Retrieves a product by its ID.
    - `listAllProducts()`: Lists all products with their details.
    - `updateProductQuantity(String id, int newQuantity)`: Updates the quantity of a product.
    - `addProduct(Product product)`: Adds a new product to the list.
  
---
### **Have a blast and code with joy! 😄**
