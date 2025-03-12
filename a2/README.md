# Autoclean

## Description
**Autoclean** is a simple shell script that helps users clean up unnecessary files from their system.  
It supports removing **log files, cache files, and old files** based on user input.  
This script **automates routine cleanup tasks**, helping keep your system organized and free of clutter.  

## Why This is Useful
Over time, files such as cache, logs, and old unused documents accumulate, **wasting disk space** and slowing down the system.  
Instead of manually searching and deleting these files, **Autoclean** provides a quick and efficient way to handle cleanup.

## Installation
1. Clone the repository:
   ```sh
   git clone <your-github-repo-link>
   ```
2. Navigate to the `a2` directory:
   ```sh
   cd cs131/a2
   ```
3. Make the script executable:
   ```sh
   chmod +x autoclean
   ```
4. Run the script using the command:
   ```sh
   ./autoclean --option
   ```

## Usage
Autoclean supports the following options:

- `--cache` : Deletes cache files from `~/.cache`
- `--logs` : Deletes log files from `~/logs`
- `--old` : Deletes files older than a user-specified number of days from `~/Documents`, `~/Downloads`, and `~/Desktop`

### Examples
#### 1. Deleting Cache Files
```sh
autoclean --cache
```
**Example Output:**
```
Finding cache files...
/home/user/.cache/tempfile1
/home/user/.cache/tempfile2
Do you want to delete these cache files? (y/n) y
Cache files deleted.
```

#### 2. Deleting Log Files
```sh
autoclean --logs
```
**Example Output:**
```
Searching for log files...
/home/user/logs/log1.txt
/home/user/logs/log2.txt
Do you want to delete these log files? (y/n) y
Log files deleted.
```

#### 3. Deleting Old Files (Older than 5 days)
```sh
autoclean --old
```
**Example Output:**
```
Delete files older than how many days? 5
Searching for files older than 5 days...
/home/user/Documents/oldfile1.txt
/home/user/Downloads/oldfile2.txt
Do you want to delete these old files? (y/n) y
Files older than 5 days deleted.
```

## Contributing
Contributions are welcome! Feel free to fork this repository and submit pull requests for improvements or new features.
