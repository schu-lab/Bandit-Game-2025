# Bandit Notes Answers
# Author: S. Chu
# Date: 02/01/2024

L0:
    ssh bandit0@bandit.labs.overthewire.org -p 2220
    password: bandit0
L1:
    ssh bandit0@bandit.labs.overthewire.org -p 2220
    password: bandit0
    prompt: cat readme
    answer: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
L2:
    ssh bandit1@bandit.labs.overthewire.org -p 2220
    password: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
    prompt:cat < -
    answer: 263JGJPfgU6LtdEvgfWU1XP5yac29mFx
L3:
    ssh bandit2@bandit.labs.overthewire.org -p 2220
    password: 263JGJPfgU6LtdEvgfWU1XP5yac29mFx
    prompt: cat "spaces in this filename"
    answer: MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
L4:
    ssh bandit3@bandit.labs.overthewire.org -p 2220
    password: MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
    prompt:
        la -la
        cat ...Hiding-From-You
    answer: 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
L5:
    ssh bandit4@bandit.labs.overthewire.org -p 2220
    passwowrd: 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
    prompt:
        ls
        cd inhere
        file ./*
        cat ./-file07
    answer: 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
L6:
    ssh bandit5@bandit.labs.overthewire.org -p 2220
    password: 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
    prompt:
        ls
        find inhere -type f -size 1033c ! -executable -exec file {} \; | grep 'text'
        cat inhere/maybehere07/.file2
    answer: HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
    explaination:
        find inhere: Searches the inhere directory.
        -type f: Ensures that only regular files are considered.
        -size 1033c: Looks for files that are exactly 1033 bytes in size.
        ! -executable: Filters out files that are executable.
        -exec file {} \;: For each file found, runs the file command, which checks the file type (e.g., whether it is human-readable).
        | grep 'text': Filters the results to show only human-readable files (text files).
L7:
    ssh bandit6@bandit.labs.overthewire.org -p 2220
    password: HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
    prompt:
        ls
        find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null
        cat /var/lib/dpkg/info/bandit7.password
    answer: morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
    explanation:
        find /: Starts searching from the root directory (/). You can modify this to narrow down the search to a specific directory if needed.
        -type f: Looks for regular files.
        -user bandit7: Only files owned by user bandit7.
        -group bandit6: Only files owned by group bandit6.
        -size 33c: Searches for files that are exactly 33 bytes in size.
        2>/dev/null: Suppresses error messages (such as permission-denied errors) by redirecting them to /dev/null.
L8:
    ssh bandit7@bandit.labs.overthewire.org -p 2220
    password: morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
    prompt:
        ls
        cat data.txt | grep million
        or grep 'millionth' data.txt
    answer: dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
L9:
    ssh bandit8@bandit.labs.overthewire.org -p 2220
    password: dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
    prompt:
        ls
        sort data.txt | uniq -u
    answer: 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
    explanation:
        sort data.txt: Sorts the lines in the data.txt file.
        uniq -u: Filters out all lines that appear more than once, leaving only the lines that appear once.
L10:
    ssh bandit9@bandit.labs.overthewire.org -p 2220
    password: 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
    prompt:
        ls
        head -n 4 data.txt
        cat data.txt | strings -e s | grep ==
    answer: FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
    explaination:
        cat data.txt
        strings -e s
        grep ==
L11:
    ssh bandit10@bandit.labs.overthewire.org -p 2220
    password: FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
    prompt:
        ls
        cat data.txt
        cat data.txt | base64 -d
        base64 -d data.txt
    answer: dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
    explaination:
        base64 --help
        Base64 encode or decode FILE, or standard input, to standard output.
L12:
    ssh bandit11@bandit.labs.overthewire.org -p 2220
    password: dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
    prompt:
        ls
        cat data.txt
        cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
    answer: 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
    explaination:
        tr: This is the translate command in Linux, which is used to replace or transform characters in a string.
        'A-Za-z': This specifies the input character set to be transformed. It matches all uppercase (A-Z) and lowercase (a-z) letters.
        'N-ZA-Mn-za-m': This specifies the output character set, defining how each letter is mapped:
            For uppercase letters (A-Z): It rotates each letter by 13 positions.
                A becomes N, B becomes O, ..., M becomes Z, N becomes A, and so on.
            For lowercase letters (a-z): Similarly, it rotates each letter by 13 positions.
                a becomes n, b becomes o, ..., m becomes z, n becomes a, and so on.
L13:
    ssh bandit12@bandit.labs.overthewire.org -p 2220
    password: 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
    prompt:
        ls
        head -4 data.txt                    # Shows data as hext dump (0b in 0x format)
        file data.txt
        tmp_dir=$(mktemp -d)                # Create a temporary directory with a random name
        echo $tmp_dir
        cp data.txt $tmp_dir                # Copy the data.txt file into the temporary directory
        cd $tmp_dir
        mv data.txt data                    # Rename the file inside the temp directory
        xxd -r -p data > binary             # Use xxd to convert data to binary equivlent
        file binary                         # Verify file data
        cp binary binary.gz                 # Copy/convert to gzip file
        gunzip binary.gz                    # Will override binary
        bunzip2 binary                      # Compressed using bzip2
        file binary.out
                                            # File Recurively compressed using `tar`, `gzip`, and `bzip2`
        mv binary.out binary.gz
        gunzip binary.gz
        file binary
        tar -xf binary
        rm binary data
        file data5.bin
        tar -xf data5.bin
        rm data5.bin
        file data6.bin
        bunzip2 data6.bin
        file data6.bin.out
        tar -xf data6.bin.out
        rm data6.bin.out
        file data8.bin
        mv data8.bin data8.gz
        gunzip data8.gz
        file data8                  # Finally a ASCII text from recurive description
        cat data8
    answer: FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
L14:
    ssh bandit13@bandit.labs.overthewire.org -p 2220
    password: FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
