#include <windows.h>
#include <stdio.h>

void main()
{
	HANDLE hFile, hStream;
	DWORD dwRet;

	hFile = CreateFile(TEXT("TestFile"), // Filename
		GENERIC_WRITE,    // Desired access
		FILE_SHARE_WRITE, // Share flags
		NULL,             // Security Attributes
		OPEN_ALWAYS,      // Creation Disposition
		0,                // Flags and Attributes
		NULL);           // OVERLAPPED pointer
	if (hFile == INVALID_HANDLE_VALUE)
	{
		printf("Cannot open TestFile\n");
		return;
	}
	else
	{
		WriteFile(hFile,              // Handle
			"This is TestFile", // Data to be written
			16,                 // Size of data, in bytes
			&dwRet,             // Number of bytes written
			NULL);             // OVERLAPPED pointer
		CloseHandle(hFile);
		hFile = INVALID_HANDLE_VALUE;
	}

	hStream = CreateFile(TEXT("TestFile:Stream"), // Filename
		GENERIC_WRITE,           // Desired access
		FILE_SHARE_WRITE,        // Share flags
		NULL,                    // Security Attributes
		OPEN_ALWAYS,             // Creation Disposition
		0,                       // Flags and Attributes
		NULL);                  // OVERLAPPED pointer
	if (hStream == INVALID_HANDLE_VALUE)
		printf("Cannot open TestFile:Stream\n");
	else
	{
		WriteFile(hStream,                   // Handle
			"This is TestFile:Stream", // Data to be written
			23,                        // Size of data
			&dwRet,                    // Number of bytes written
			NULL);                     // OVERLAPPED pointer
		CloseHandle(hStream);
		hStream = INVALID_HANDLE_VALUE;
	}
}