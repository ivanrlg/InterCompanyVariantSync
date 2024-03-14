# BC-IntercompanyVariantTransfer

## Overview
This repository contains the "BC-IntercompanyVariantTransfer" solution, specifically crafted to enhance Dynamics 365 Business Central's capabilities in handling variant codes seamlessly across intercompany transactions. It focuses on bridging the data consistency gap, enabling accurate and efficient synchronization of product variant information between entities, thereby boosting operational efficiency and data integrity.

## Features
- Automatic synchronization of "Variant Code" between intercompany purchasing and sales documents.
- Custom event subscribers and table extensions to ensure accurate and consistent data transfer.
- Includes enhancements to "Handled IC Outbox Purch. Lines" and "Handled IC Inbox Sales Lines" pages for improved visibility and management of variant codes.
- The code and structure are designed to be extendible, allowing for reverse synchronization (from sales to purchase) with minimal adjustments, though the current implementation focuses on purchase-to-sales document flow.

## Components
- **Codeunit "Intercompany Variant Event Handlers"**: Orchestrates the synchronization of variant codes between companies through event handling.
- **Table Extensions for IC Outbox and Inbox Lines**: Extends both "IC Outbox Purchase Line" and "IC Inbox Sales Line" with an "IC Partner Variant" field, facilitating the transfer and tracking of variant codes.
- **Page Enhancements**: Modifies "Handled IC Outbox Purch. Lines" and "Handled IC Inbox Sales Lines" for better management and oversight of variant codes in intercompany documents.

## Usage
To activate this feature in your Business Central environment, deploy the provided extensions and codeunit. Configuration involves simple steps to ensure the "IC Partner Variant" field is appropriately linked to your intercompany documents, with event subscribers automating the variant code transfer process.

## Contribution
Contributions, suggestions, and feedback are highly encouraged to further refine and enhance this solution. If you're interested in contributing or have identified potential issues, please refer to our contribution guidelines.

## License
This project is made available under the MIT License. For details, see the `LICENSE.md` file.

## Acknowledgements
Thanks to the Dynamics 365 Business Central community for the ongoing discussions and insights that drive innovation and improvements in our solutions.

## Learn More
For an in-depth exploration of how this solution was developed and its practical applications, check out our detailed guide: [Extending Intercompany Synchronization in Business Central: A Comprehensive Guide](https://ivansingleton.dev/extending-intercompany-synchronization-in-business-central-intercompany-transactions/).

## Additional Notes
As part of our commitment to enhancing Business Central's intercompany functionalities, this solution opens new possibilities for data synchronization and operational optimization. While initially focused on purchase-to-sales flow, its extendable architecture paves the way for reverse and other complex transaction patterns in the future. Stay updated and get involved by visiting our [GitHub repository](#).
