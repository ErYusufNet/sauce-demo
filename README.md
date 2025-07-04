# sauce-demo
# SauceDemo Test Automation with Robot Framework

Hi!  
This project includes 3 automated test cases written with **Robot Framework** and the **Browser library**.  
The tests are for [https://www.saucedemo.com](https://www.saucedemo.com), and I created them as part of my test automation training.

---

## 🧪 What’s Tested?

I created the following three test cases:

1. **Login Test**  
   Checks if a user can log in with valid credentials.

2. **Add and Remove from Cart**  
   Adds a product to the cart and then removes it.

3. **Purchase Flow**  
   Adds a product and goes through the full checkout process.

---

## 📁 Project Structure

saucedemo-tests/
├── resources/
│ └──> saucedemo.resource # Shared keywords and variables
├── tests/
│ ├──> login_test.robot # Login test
│ ├──> add_remove_item.robot # Cart add/remove test
│ └──> purchase.robot # Purchase flow test
├── requirements.txt # Python dependencies
├── README.md # This file
└── .gitignore # Ignored files


---

## 💻 How to set up the project on your local

1. Clone the project:
   
git clone git@github.com:eryusufnet/saucedemo-tests.git
cd saucedemo-tests
2.create a virtual environment
  python -m venv venv
3.Activate the environment
# Windows
venv\Scripts\activate

# macOS/Linux
source venv/bin/activate
4.Install the dependencies:
pip install -r requirements.txt

5.Set up Playwright:
rfbrowser init


## How to Run the Tests
to run all tests: robot tests/
to run single test robot tests/login_test.robot
 Test Data Used
Username: standard_user

Password: secret_sauce

For the login test, the expected result is seeing the “Products” page.
For the purchase test, the final screen should say “Thank you for your order!”



