import bb.cascades 1.2

Container {
    id: theContainer
    verticalAlignment: VerticalAlignment.Fill
    preferredWidth: 768
    property alias image: theImage
    implicitLayoutAnimationsEnabled: false
    layout: AbsoluteLayout {
    }
    attachedObjects: LayoutUpdateHandler {
        id: luhPosition
        onLayoutFrameChanged: {
            // Try and error until finding this value which looks similiar to Android
            theImage.translationX = luhPosition.layoutFrame.x * -0.5;
        }
    }
    ImageView {
        id: theImage
        imageSource: "asset:///" + ListItemData.image
        scalingMethod: ScalingMethod.AspectFill
        // Try and error until finding this value which looks similiar to Android
        preferredHeight: 750.0
        horizontalAlignment: HorizontalAlignment.Fill
        attachedObjects: [
            ImplicitAnimationController {
                /* Disabling Implicit Animations make everything move in sync */
                enabled: false
            }
        ]
    }
    Container {
        verticalAlignment: VerticalAlignment.Fill
        layout: StackLayout { 
        }
        ScrollView {
            id: theScroller
            property double previousY: 0.0
            scrollViewProperties.pinchToZoomEnabled: false
            scrollViewProperties.scrollMode: ScrollMode.Vertical
            scrollViewProperties.overScrollEffectMode: OverScrollEffectMode.OnScroll
            content: ContentRenderer {
                id: contentRenderer
            }
            onViewableAreaChanging: {
                /*console.log("[onViewableAreaChanging] viewableArea.y: " + viewableArea.y
                +", theImage.translationY: " + theImage.translationY);*/

                if(viewableArea.y >= 0.0)
                	theImage.translationY = viewableArea.y * -0.5;
                else{
                    var val = 1 + (viewableArea.y / -375);
                    theImage.scaleX = theImage.scaleY = val;
                }
            }
        }
    }
}
