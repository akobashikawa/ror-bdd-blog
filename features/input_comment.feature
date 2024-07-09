Feature: Input comment
    As a blog visitor
    I can input comment onto blog

    Scenario: Input comment
        Given there is a post with title "Dummy post" and content "Dummy content"
        And I am on the post page
        When I add a comment with the following information
        | Name  | Email             | Content      |
        | Wayne | admin@wayneye.com | Test comment |
        Then I can see the comment has been added onto the post