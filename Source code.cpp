#include <Windows.h>
#include <iostream>
#include <TlHelp32.h>
#include <string>
#include <time.h>
#include <time.h>


const uintptr_t retOffset = 0x2CD80;
const uintptr_t shAllowedOffset = 0x68140;

uintptr_t getModuleBase(DWORD pid, const char* name)
{
	HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPMODULE, pid);
	if (snapshot != INVALID_HANDLE_VALUE)
	{
		MODULEENTRY32 me;
		me.dwSize = sizeof(MODULEENTRY32);
		if (Module32First(snapshot, &me))
		{
			do
			{
				if (strcmp(me.szModule, name) == 0)
				{
					CloseHandle(snapshot);
					return reinterpret_cast<uintptr_t>(me.modBaseAddr);
				}
			} while (Module32Next(snapshot, &me));
		}
	}

	return 0;
}

char* getWindowTitle(HWND hwnd)
{
	char* windowTitle = new char[GetWindowTextLength(hwnd)];
	GetWindowText(hwnd, windowTitle, sizeof(windowTitle));
	return windowTitle;
}

int main()
{
	SetConsoleTitleA("FiveM ScriptHook Bypass - Created by Desudo @ https://unknowncheats.me");

	std::cout << "Waiting for window..." << std::endl;;

	HWND hwnd = NULL;
	do
	{
		hwnd = FindWindowEx(NULL, NULL, "grcWindow", NULL);
		Sleep(1000);
	} while (!hwnd);

	std::wcout << "Found window (name = " << getWindowTitle(hwnd) << "), patching..." << std::endl;

	DWORD pid;
	GetWindowThreadProcessId(hwnd, &pid);

	HANDLE hndl = OpenProcess(PROCESS_ALL_ACCESS, FALSE, pid);
	if (hndl != INVALID_HANDLE_VALUE)
	{
		uintptr_t startAddress;
		for (int i = 0; i < 5; i++)
		{
			startAddress = getModuleBase(pid, "adhesive.dll");
			if (startAddress)
				break;

			Sleep(1000);
		}

		if (startAddress)
		{
			void* retAddress = reinterpret_cast<void*>(startAddress + retOffset);
			void* shAllowedAddress = reinterpret_cast<void*>(startAddress + shAllowedOffset);

			BYTE patchRet[]{
				0xC3
			};

			bool patchShAllowed = true;

			DWORD oldProt;
			if (VirtualProtectEx(hndl, retAddress, 1, PAGE_EXECUTE_READWRITE, &oldProt))
			{
				if (!WriteProcessMemory(hndl, retAddress, &patchRet, sizeof(patchRet), NULL))
				{
					std::cout << "WriteProcessMemory failed at retAddress, try turning off your antivirus." << std::endl;
				}

				if (!VirtualProtectEx(hndl, retAddress, 1, oldProt, &oldProt))
				{
					std::cout << "VirtualProtectEx (2) failed at retAddress, try turning off your antivirus." << std::endl;
				}
			}
			else
			{
				std::cout << "VirtualProtectEx (2) failed at retAddress, try turning off your antivirus." << std::endl;
			}

			if (!WriteProcessMemory(hndl, shAllowedAddress, &patchShAllowed, sizeof(patchShAllowed), NULL))
			{
				std::cout << "WriteProcessMemory failed at shAllowedAddress, try turning off your antivirus." << std::endl;
			}

			std::cout << "Patched." << std::endl;
		}
		else
		{
			std::cout << "startAddress was invalid, try closing the window with the title listed above." << std::endl;
		}
	}
	else
	{
		std::cout << "OpenProcess failed, try turning off your antivirus." << std::endl;
	}

	CloseHandle(hndl);

	getchar();
	return 0;
}

addmain

: FiveM
	while (true)
		{
            Sleep(1);
			if (Bypass)
			{
				bool ShAllowed = true;
				WriteProcessMemory(handle, AllowScriptHook, &ShAllowed, sizeof(ShAllowed), NULL);
			}
		}
