# Code Complete - Steve McConnell
[https://fagnerbrack.com/book-summary-code-complete-1522ddb14551](https://fagnerbrack.com/book-summary-code-complete-1522ddb14551)
goal: improving the quality and maintainability of code

## Design and planning
The book emphasizes the importance of thorough planning and design before writing code. This includes understanding requirements, creating detailed designs, and considering potential issues to minimize problems during implementation.

A developer creates a detailed design document for a new feature, outlining the overall architecture, classes, and methods, as well as defining the interactions between components.

## Writing clean and maintainable code
McConnell advocates for writing clean, self-explanatory code with meaningful variable names, proper indentation, and consistent formatting, making it easier for others to understand and maintain.

## Code Comments and documentation
A developer adds inline comments to explain complex logic and maintains up-to-date documentation describing the overall system architecture and individual modules.

Don't overuse this advice. Self-documented is always better than comments. Use comments for the "why" and self-documented code to document the "how".

## Refactoring
A developer identifies a section of code with poor performance and refactors it by optimizing algorithms and reducing unnecessary calculations, resulting in improved efficiency.

Please be aware refactoring is changing the code structure without changing its behaviour. If you change the behaviour of the code while changing the structure, that's NOT refactoring. Tests are the best way to ensure the behaviour is not changed, only the structure.

## Error Handling and defensive programming
A developer validates user input to prevent unexpected behaviour, uses try-catch blocks to handle exceptions, and adds checks for null or invalid values throughout the code.

## Testing and debugging
A developer writes comprehensive unit tests for individual business domain models, ensuring they work correctly and can be safely integrated with the rest of the system.

## Code reviews and collaboration
McConnell emphasizes the importance of code reviews and collaboration among team members to share knowledge, identify potential issues, and improve the overall quality of the software.
