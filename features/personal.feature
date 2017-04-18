@personal_info
Feature: Personal information
As an investor I should be able to fill in all my details

@per_valid
Scenario: When Provided data are all valid
Given the user has provided all valid data
When he clicks on submit button
And the system triggers a KYC
And if the KYC passes
Then user must be notified about it through email and notification within the application as well

@kyc_blank
Scenario: When blank data is provided
Given the user is on personal info page
When the User skips to enter mandatory field data
And he clicks on submit
Then fields must be highlighted as soon as the focus moves out of the field

@kyc_invalid
Scenario: When user provides invalid data
Given the User entered all invalid data.
When he clicks on submit button
And the System performs KYC check.
And the System will return with failure.
Then User must be notified about the failure.
Then User must be taken to Document upload page.

@kyc_fail
Scenario: Valid Documents uploaded after KYC fail.
Given the  User uploads a document
And the verification of documents will take 3 days by displaying a flash message.
Then  the user should be notified via email after document has been verified.
Then the user can continue with further steps.

@notification
Scenario: Notification alert
Given the document upload is successful
Then the user must be notified through mail and in application as well

@kyc_doc_size
Scenario: Size of the file exceeds the maximum size
Given When the user uploads the document which is more than 2MB
Then he should see the message “The file should be less than 2MB”

@kyc_doc_format
Scenario: Document format
Given the user uploads the document other than JPEG/PNG
Then user should see the message “The document should be of format JPEG and PNG only”


@invalid_doc
Scenario: Invalid Documents uploaded after KYC fail.
Given the user uploads invalid documents
And the user is notified by flash message that it takes 3 days to verify
And the verification fails
And the user is notified to get in touch with an IRA.
Then the user’s personal information should be flushed out of the DB.



