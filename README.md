# Simple Windows Backdoor Example

## Description
This repository contains a simple example of a Windows backdoor utilizing a PowerShell script (`File.ps1`) and a batch file (`test.bat`) that executes the PowerShell script. This project demonstrates the basic concepts of using batch and PowerShell scripts for automation and remote command execution on Windows systems.

**Disclaimer: This code is provided for educational purposes only and is intended to be used in a controlled and ethical testing environment only. By using this software, you agree to use it legally and ethically.**

## Features
- Executes PowerShell commands through a batch file.
- Designed to be easy to understand and educational.
- Demonstrates the integration between batch and PowerShell scripts on Windows.

## Prerequisites
To run this backdoor, ensure that you have the following:
- A Windows machine (this code does not run on other operating systems).
- PowerShell and Command Prompt available on the machine.

## Installation
To use this example, you need to clone this repository and set up the files on your Windows machine:
1. Clone the repository:

git clone https://github.com/davidpereiracib/Undetectable_Backdoor.git

2. Navigate to the repository directory:

cd simple-windows-backdoor

## Usage
To activate the backdoor, follow these steps:
1. Open Command Prompt as Administrator.
2. Navigate to the directory containing `test.bat`.
3. Execute the batch file:

test.bat

This will run the PowerShell script `File.ps1` through the batch file `test.bat`.

## Testing
To test the functionality:
1. Modify `File.ps1` to include the Remote machine IP and Port you want to test.
2. Run `test.bat` as described in the Usage section.
3. In Kali Machine or similar, put a Netcat listener in the appropriate port: $nc -l -vv -n -p <port>
4. Observe the outputs and behaviors to confirm the script executes as expected.

## Contributing
Contributions to this project are welcome. Please fork the repository and propose your changes through a pull request.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments
- Thank you to the community for providing feedback and suggestions to improve this educational tool.

## Contact
For any inquiries or issues, please open an issue in the GitHub repository or contact the repository owner.
