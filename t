[33mcommit 1a40130dc978875695dbe2c51a8628384c6dd3be[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 8 02:15:29 2021 -0300

    added rubocop

[33mcommit cfa6fbfbc3cd5a6879fb650fe7a4b133b6f32834[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 8 01:29:18 2021 -0300

    Revert "route, action and policy done for delete. Disable working"
    
    This reverts commit d2183556e47feec91f7646f49018f90085537af8.

[33mcommit d2183556e47feec91f7646f49018f90085537af8[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 8 01:16:49 2021 -0300

    route, action and policy done for delete. Disable working

[33mcommit 77af530e12f9e1fd98830ce912a27ad8cf082559[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 8 01:00:46 2021 -0300

    added a disabl boolean column to stocks

[33mcommit 2288395faf4c91a399a4b779a38947049cb3a2f6[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 8 00:47:41 2021 -0300

    update done. cant change bearer or price

[33mcommit ad12fd4d87956c6905bc3232d5d12981de855f57[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 8 00:23:47 2021 -0300

    reorder json for better understanding

[33mcommit 0b5898f0a27a0333e989786a442a075cf7c3c4ab[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 8 00:23:24 2021 -0300

    generate route, action, and policy to update stock

[33mcommit 103ffad68c29b0d870014a59382f49772c9fd7c3[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 23:22:37 2021 -0300

    removed prybybug

[33mcommit fb6c92e3650b7ad2146557d1a0edfc630a7a3e4a[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 23:18:36 2021 -0300

    I wasw missing the act as authenticable token on my contrllers. Thats why i didnt had user on my policies

[33mcommit e381d879dbf2c6671ad201800b0cfdc5d86d8184[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 23:02:46 2021 -0300

    added stocks#index endpoint response

[33mcommit 9d6919310048b0c055487fc3b98b939b2fdd26ad[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 22:49:56 2021 -0300

    route and action working for stocks#index

[33mcommit 2f6feb89a5e70e516f444e955e78754ae792aaac[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 22:41:50 2021 -0300

    pundit policy and action create done for stock

[33mcommit e76445a60018487f04a83e1018c4e8448537178b[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 22:13:39 2021 -0300

    create route

[33mcommit 039a7e91b21520c318c8a6f83b01a389c2a755f6[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 22:13:16 2021 -0300

    can see specific stock info

[33mcommit 3c37103d12de1151aa25c0d08352d535c29aac69[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 22:06:02 2021 -0300

    created show policy for stock

[33mcommit b377592e88c6b1b28d604fe4ea41d3be077f13a3[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 22:05:09 2021 -0300

    created route for show controller and action for show

[33mcommit 3b343414f5812a1a4edb962c0078a41bed332873[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 21:56:24 2021 -0300

    show view market price for test purpouse

[33mcommit 6b4633f673269f0e8f6e59a31f716a091ef00b11[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 21:52:30 2021 -0300

    can create prices only if it doesn't exist

[33mcommit 3394b55760ac23be9c6a708f2b26789cab7edd9e[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Wed Jul 7 21:08:58 2021 -0300

    Fixed relartion

[33mcommit a13afa1608fe0e71473668dd9980da564e25e358[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Fri Jul 2 11:56:17 2021 -0300

    fixed validations

[33mcommit 1a246913aeee1f054e241b6f084a32a9d99ea606[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Fri Jul 2 10:41:28 2021 -0300

    testing bearer validations

[33mcommit 85af2b01f11e07694311b8a7f8667495d757632e[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Fri Jul 2 10:12:44 2021 -0300

    bearer testing creations validations

[33mcommit 7968c1bcabf9e1eadc0e2e499fc20c13390076cb[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Fri Jul 2 10:12:28 2021 -0300

    rails generate rspec:install

[33mcommit f7be526d8b861cc3946b3ec2698fae2e8ef2e293[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 21:02:21 2021 -0300

    added auth toke on user.rb and can create an bearer sending a name

[33mcommit 79f3bc31dd66fcc87f53e60bde3983c52189c660[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 21:01:25 2021 -0300

    added auth toke to user

[33mcommit 81727da1f8f024beedcfeeff838d08ee613ff9f2[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 20:44:48 2021 -0300

    added simple token gem

[33mcommit e0135c2840093ec5ef51e082b15ce3d6cc72b23f[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 20:43:53 2021 -0300

    added user on show of bearer

[33mcommit e6d20fe9b758d47fd145fb674f82d42022311b77[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 20:41:48 2021 -0300

    fixed column name market_price

[33mcommit 726438d49b83d4c5c30a64f05deef10d2c18fa63[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 20:39:26 2021 -0300

    Debugging after a few typos. On Controller was name of the controller. Stocks instead of Bearers. Column name was wrong and needed adjustment.  Defaults on router should have an S. Pundit was not installed

[33mcommit 64b88915afa9eecd1d88d089f256645ec39f4947[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 20:14:12 2021 -0300

    created show and create method

[33mcommit fbb3384f09eee992ddc2a81716c185710e019062[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 19:46:45 2021 -0300

    pseudo code for test

[33mcommit a31a9feb23ec9de7c789e646fa502ea48c9847ae[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 19:45:24 2021 -0300

    route to create and show bearer. controller generated

[33mcommit c03cb5c471a240456765a737658766456aa09b35[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 19:37:39 2021 -0300

    added base controller for api and bearer policy init

[33mcommit 89add54dd190363b42f43de944eaa452f5e8ebe8[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 19:34:59 2021 -0300

    installed pundit

[33mcommit d146aedc05d10300dfedd57456c809e3681378ba[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 19:34:19 2021 -0300

    added pundit

[33mcommit f8781f5099f2849492a8c95cd6bcb512cda79a80[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 19:26:50 2021 -0300

    sotck validation

[33mcommit 8b335f29b1c4c2a1d56de6dc18e40daf77c6c842[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 19:23:50 2021 -0300

    fix uniqueness structure

[33mcommit d92daa71c4b92fdc15b0ef59b4577081ef1ae0a2[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 19:18:46 2021 -0300

    generate models and added some validations

[33mcommit a1a247c6d3828ce0e5e85eed9b0a22ee93d8bd26[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 18:57:40 2021 -0300

    start pseudo code

[33mcommit f6a9f72fb578b297225c9591d0bb29934c115df4[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 18:42:52 2021 -0300

    added rspéc and readme challenge description

[33mcommit bc53857ae110a98125089ce997b26fc3c139ef95[m[33m ([m[1;32mmaster[m[33m)[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 16:08:36 2021 -0300

    Rails new Stock Market API. Le Wagon Template

[33mcommit f16cd83af5bb9abe24df5d9aabddd436ca16743b[m
Author: Andre Menezes <djdedemenezes@gmail.com>
Date:   Thu Jul 1 16:07:46 2021 -0300

    Initial commit with devise template from https://github.com/lewagon/rails-templates
