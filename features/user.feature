# Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula neque id ultrices dignissim.
# Suspendisse ultricies fermentum sollicitudin. Sed vel auctor ante. Aenean nec arcu a dui convallis blandit.
# Vivamus ut purus fringilla, porttitor dui non, pharetra augue. Aenean finibus nibh finibus, efficitur nulla ut, bibendum eros.
# Integer eu tortor metus. Nam tempor magna eget tellus lobortis faucibus. Aenean a nisl id nunc efficitur porta.
# Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean tristique dictum metus sit amet congue.
# Nulla egestas velit et rutrum vehicula. Aliquam dapibus viverra lorem, sit amet mattis lacus varius nec.

# Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec non est eu dolor pulvinar faucibus.
# Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
# Sed euismod elementum ante, a dignissim turpis pharetra eu. Praesent ut feugiat nunc. Morbi sit amet tincidunt lorem.
# Phasellus hendrerit ex dapibus rutrum malesuada. Pellentesque eget diam congue, commodo dolor in, eleifend arcu.
# Curabitur nec lectus et odio sollicitudin malesuada. Vestibulum pharetra enim nec ante aliquet ultrices. Duis semper lorem a dolor mollis mollis.
# Quisque tincidunt commodo consequat. Sed vel condimentum massa. Phasellus luctus, lorem a porta condimentum, ex neque ultricies enim,
# at imperdiet urna enim sit amet dui. Nam quis facilisis elit. Curabitur semper efficitur neque.

Feature: User login

  As a registered user,
  I want to login to the system,
  so that I can use the system.

  Scenario: User logged in successfully
    Given user provides valid login information
    When user login
    Then the home page should be displayed
