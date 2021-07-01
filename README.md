# LBJSDK

[![CI Status](https://img.shields.io/travis/x1248399884@163.com/LBJSDK.svg?style=flat)](https://travis-ci.org/x1248399884@163.com/LBJSDK)
[![Version](https://img.shields.io/cocoapods/v/LBJSDK.svg?style=flat)](https://cocoapods.org/pods/LBJSDK)
[![License](https://img.shields.io/cocoapods/l/LBJSDK.svg?style=flat)](https://cocoapods.org/pods/LBJSDK)
[![Platform](https://img.shields.io/cocoapods/p/LBJSDK.svg?style=flat)](https://cocoapods.org/pods/LBJSDK)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LBJSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LBJSDK'
```

## Author


1.LBJTableView

```
  [self.view addSubview:self.tableView];
  
  [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
    make.left.right.top.mas_equalTo(0);
    make.bottom.mas_equalTo(0);
  }];
  
  self.tableView.registerClassDictionary = @{
    [HQSetTableViewCellVM reuseCellIdentifier] : [HQSetTableViewCell class],
  };
  
  HQSetTableViewCellVM * viewModel = [[HQSetTableViewCellVM alloc]init];
  viewModel.title = @"名称";
  viewModel.showBottomLine = YES;
  viewModel.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
  viewModel.didSelectedHandler = ^(id _Nonnull obj) {
    NSLog(@"我点击了");
  };
  
  [self.tableView.formItems addObject:viewModel];
```

2.LBJUIKit

```
view.backgroundColor = [UIColor lbj_RandomColor];

view.backgroundColor = [UIColor lbj_colorWithHexString:@"#999999"];

view.backgroundColor = [UIColor lbj_colorWithHexString:@"#999999" alpha:0.6];
```





## License

LBJSDK is available under the MIT license. See the LICENSE file for more info.
