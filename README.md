
# 💰 Improved PayableContract
Smart contract in Solidity that allows you to receive and withdraw Ether securely, with access control and event logging for traceability on the blockchain.
⚙️ Features
📥 Receiving Ether via the payable function

💸 Withdrawal of funds with access protection (onlyOwner)

📢 Event logging for deposits and withdrawals

🔐 Using require to validate transactions

🧾 Registering the owner when deploying the contract

🔐 Security
The contract prevents common vulnerabilities:

Not everyone can withdraw funds: only the owner can execute withdrawals.

Audit events: deposits and withdrawals are logged.

Withdrawal success verification: prevents losses if the call fails.
