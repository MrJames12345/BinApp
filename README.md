# BinApp
Bin app for iOS and Android.

# Architecture

## Front-End
Flutter

## Back-End
C# .NET
    - Not limited to capabilities of firebase, eg. relational database.

## SMS
Options: SMSBroadcast, ClickSend
    - Both able to use in a C# program.
    - SMSBroadcast requires a generic Http library to make the calls.
    - ClickSend has it's own C# library which would allow it to be better integrated.

## Authentication
ASP.NET Core Identity
    - Most up-to-date user authentication provider.
    - Works with a relational database.

# Database
SQL Server
    - Easier to maintain compared to NoSQL structure. Have set schema that won't need to change often.
    - Although NoSQL has better performance for select queries, this is not a significant factor for our system since it won't be as scaled compared to a system like popular social network.