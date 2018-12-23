# Simple horizontal tabs w/ VIPER base

## Misssion 
__Modular - Tabs (Horizontal CollectionView) to use in your project.__

## Supported features
__This repo can be used as an example for__

| Feature                        | Supported | Note                                            |
| ------------------------------ | --------- | ----------------------------------------------- |
| VIPER architecture             | Yes       |                                                 |
| Horizontal scroller            | Yes       |                                                 |


## Installation
### Carthage
- Coming soon!

### Pods
- Coming soon!

### Manual
#1

* __Drag & drop the Modules folder into your project__
* __Give connections for TabView from nib to your VC__
* __Declare the presenter__

```swift
// Setup the Tabs.
 override func viewDidLoad() {
	 presenter?.updateView()
 }
```
#2
* __Extend PresenterToViewProtocol__

```swift
// Setup the Data.
 func showData() {
        tabView.dataArray = [String]//Format required
 }
```

#3
* __Extend TabDelegate__

```swift
// Selection
func tabSelected(menu: HorizontalTabsView, index: Int) {
	//Callback for selection!
}
```
