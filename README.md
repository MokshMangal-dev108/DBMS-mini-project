# House Rental System

## Overview
This House Rental System is a comprehensive solution for managing rental properties efficiently. It allows property owners and administrators to create a centralized database of rental properties, store essential information, and manage lease agreements and tenant details effectively.

## Features
- **Centralized Database**: Store and manage information about rental properties, including:
  - Rental rates
  - Property features
  - Lease start and end dates
  - Tenant contact details

- **User-Friendly Interface**: A simple and intuitive interface for easy navigation and property management.

- **Customizable System**: Highly customizable database and features to suit specific needs, such as:
  - Setting up custom lease agreements
  - Adding unique property features

## Technologies Used
- **Backend**: Node.js and Express.js
- **Frontend**: HTML, CSS, and JavaScript
- **Database**: SQL (Structured Query Language) for efficient data storage and retrieval

## File Structure
```
|-- public/                # Static files
|-- sql/                  # SQL scripts for database management
|-- views/                # HTML templates for frontend
|-- app.js                # Main backend application
|-- auth.html             # Authentication page
|-- client_reg.html       # Client registration page
|-- client_reg_success.html # Success page for client registration
|-- homepage.html         # Homepage
|-- homepage.js           # Frontend logic for homepage
|-- lease_form.html       # Lease agreement form
|-- login.html            # Login page
|-- owner_reg.html        # Property owner registration page
|-- package.json          # Node.js dependencies
|-- prop_list.html        # Property listing page
|-- prop_reg.html         # Property registration page
|-- staff_listing.html    # Staff listing page
|-- staff_reg.html        # Staff registration page
|-- testing.html          # Testing purposes page
```

## Installation
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```

2. Navigate to the project directory:
   ```bash
   cd house-rental-system
   ```

3. Install dependencies:
   ```bash
   npm install
   ```

4. Set up the SQL database:
   - Use the scripts provided in the `sql/` folder to create and configure the database.

5. Run the application:
   ```bash
   node app.js
   ```

6. Access the application at `http://localhost:3000`.

## Usage
- Register property owners, staff, and tenants using the respective registration forms.
- Add new properties, including detailed descriptions and features.
- Manage lease agreements, view property listings, and update tenant contact information as needed.
- Authenticate and log in to access restricted functionalities.

## Customization
- Update the SQL scripts in the `sql/` folder to modify the database schema according to your requirements.
- Customize the frontend templates in the `views/` folder to reflect your desired UI/UX.

## Future Enhancements
- Add real-time notifications for lease renewals or upcoming payment deadlines.
- Integrate payment gateways for seamless rent collection.
- Include reporting tools for better insights into property performance.

