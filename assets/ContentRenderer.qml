import bb.cascades 1.2

Container {
    layout: AbsoluteLayout {
    }
    Container {
        background: diagonal.imagePaint
        attachedObjects: [
            ImagePaintDefinition {
                id: diagonal
                repeatPattern: RepeatPattern.XY
                imageSource: "asset:///diagonal.png"
            }
        ]
        horizontalAlignment: HorizontalAlignment.Fill
        preferredHeight: 125.0
        preferredWidth: 768.0
        leftPadding: 20.0
        bottomPadding: 10.0
        layoutProperties: AbsoluteLayoutProperties {
            // Try and error until finding this value which looks similiar to Android
            positionY: 623.0
        }
        layout: DockLayout {}
        Container {
            verticalAlignment: VerticalAlignment.Bottom
            horizontalAlignment: HorizontalAlignment.Fill
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            Container {
                background: Color.create(ListItemData.argb)
                preferredHeight: 50.0
                preferredWidth: 50.0
                layout: AbsoluteLayout {
                }
                ImageView {
                    imageSource: "asset:///circle.png"
                    layoutProperties: AbsoluteLayoutProperties {
                        positionX: 0.0;
                        positionY: 0.0;
                    }
                    preferredHeight: 50.0
                    preferredWidth: 50.0
                }
                Label {
                    text: ListItemData.id
                    textStyle.fontWeight: FontWeight.Bold
                    textStyle.fontSize: FontSize.Small
                    textStyle.color: Color.White
                    layoutProperties: AbsoluteLayoutProperties {
                        positionX: 0.0;
                        positionY: 0.0;
                    }
                    preferredHeight: 50.0
                    preferredWidth: 50.0
                    textStyle.textAlign: TextAlign.Center
                }
                
            }
            Label {
                text: ListItemData.category
                textStyle.fontWeight: FontWeight.Bold
                textStyle.fontSize: FontSize.Small
                textStyle.color: Color.create(ListItemData.argb)
                verticalAlignment: VerticalAlignment.Bottom
            }
        }
        
    }
    Container {
        id: content
        leftPadding: 20.0
        rightPadding: 20.0
        background: Color.White
        layoutProperties: AbsoluteLayoutProperties {
            // Try and error until finding this value which looks similiar to Android
            positionY: 745.0;
        }
        Label {
            text : ListItemData.title
            textFit.mode: LabelTextFitMode.FitToBounds
            textStyle.fontSize: FontSize.XXLarge
        }
        Label {
            text: ListItemData.content
            multiline: true
        }
    }
}