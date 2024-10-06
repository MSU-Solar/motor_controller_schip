# Motor Control Development

Welcome to the firmware development repository for the F302R8 STM32 MCU-based motor controller kit. This repository serves as a foundational setup for developing motor control applications, with the eventual goal of transitioning to the STM32 Motor Control SDK (MCSDK) to generate drivers for our custom applications.

## Getting Started

### Prerequisites

- **STM32CubeIDE** (tested with version 1.16.1)
  - Download from: [STM32CubeIDE Official Page](https://www.st.com/en/development-tools/stm32cubeide.html#get-software)
- **STM32CubeMX** (optional for additional configuration)
  - Download from: [STM32CubeMX Official Page](https://www.st.com/content/st_com/en/stm32cubemx.html)
- **STM32 Motor Control SDK (MCSDK)**
  - Download from: [MCSDK Official Page](https://www.st.com/en/embedded-software/x-cube-mcsdk.html)

We recommend downloading these tools in advance, as they will be required at various stages of development.

### Setting Up SSH

To securely clone the repository and push changes, we recommend setting up SSH authentication with GitHub. You can find detailed instructions here: [Connecting to GitHub with SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

#### Summary of Steps:

1. **Generate an SSH Key** (if you don't have one):
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```
   If you are using an older system that doesn't support `ed25519`, you can use:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```

2. **Add the SSH Key to Your SSH Agent**:
   ```bash
   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_ed25519
   ```

3. **Add the SSH Key to Your GitHub Account**:
   - Copy the SSH key to your clipboard:
     ```bash
     cat ~/.ssh/id_ed25519.pub
     ```
   - Go to GitHub and add it in your account settings under "SSH and GPG keys".

4. **Clone the Repository Using SSH**:
   ```bash
   git clone git@github.com:MSU-Solar/motor_controller_schip.git
   ```

For more detailed guidance, refer to [GitHub's SSH setup documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

### Project Setup Instructions

1. **Clone the Repository**
   - Ensure SSH is set up, then clone using:
     ```bash
     git clone git@github.com:MSU-Solar/motor_controller_schip.git
     ```

2. **Download and Install STM32CubeIDE**
   - Ensure that STM32CubeIDE version 1.61 or later is installed on your system.
   - Set `<local_directory>/motor_controller_schip/motor_controller/` as your workspace when prompted by STM32CubeIDE.

3. **Open the Project**
   - Navigate to:
     ```
     motor_controller/motor_controller/STM32CubeIDE/.cproject
     ```
   - Opening this file will set up the project within your workspace.

4. **Build the Project**
   - Press **Ctrl+B** to build the project.
   - It should build without any errors (warnings are acceptable).
   - If you encounter any issues, ensure that you have cloned the main branch properly, as it should be in a working state.

## Contribution Workflow

To maintain an organized workflow, we will use GitHub's discussion and issue tracking features:

1. **Discussions**
   - All development discussions will take place in the [Discussion tab](https://github.com/MSU-Solar/motor_controller_schip/discussions). This helps maintain historical records and allows for cross-referencing of key information.

2. **Issue Tracking**
   - For major bugs or new feature requests, create an issue in the [Issues tab](https://github.com/MSU-Solar/motor_controller_schip/issues).
   - When working on a specific issue, create a branch based on that issue for easier tracking. Please name the branch in the format:
     ```
     <your_initials>-<issue_number>
     ```
     Example: `VN-15`.

## Future Work

We plan to transition towards leveraging the **STM32 Motor Control SDK (MCSDK)** for generating drivers tailored to our custom applications. This will enhance the scalability and maintainability of our motor control system.

### To-Do

- Improve project descriptions and add more documentation regarding configuration using MCSDK.
