package ui.iconic;

import android.animation.Animator;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import com.balysv.materialmenu.MaterialMenuDrawable;
import com.balysv.materialmenu.MaterialMenuView;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerModule;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.github.zagum.expandicon.ExpandIconView;

import java.util.ArrayList;
import java.util.Random;

public class RNIconic extends ViewGroupManager<ViewGroup> {

    public static final String REACT_CLASS = "RNIconic";

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    private ArrayList<Object> shapes = new ArrayList<Object>();
    private int selection = 0;
    private boolean disable = false;

    @Override
    protected FrameLayout createViewInstance(final ThemedReactContext reactContext) {
        int randomId;

        Random rand = new Random();
        while (reactContext.getCurrentActivity().findViewById(randomId = rand.nextInt(Integer.MAX_VALUE) + 1) != null);
        final int viewId = randomId;

        final MaterialMenuView iconicButton = new MaterialMenuView(reactContext.getCurrentActivity());
        iconicButton.setVisible(false);

        final ExpandIconView expandIconView = new ExpandIconView(reactContext.getCurrentActivity());
        expandIconView.setVisibility(View.INVISIBLE);

        final FrameLayout frameLayout = new FrameLayout(reactContext.getCurrentActivity());
        frameLayout.addView(iconicButton);
        frameLayout.addView(expandIconView);

        iconicButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Do not play the onClick listener if the button is disabled
                if(disable)
                    return;

                if (selection + 1 == shapes.size()) selection = 0;
                else selection = selection + 1;

                String state = (String) shapes.get(selection);

                if (state.equalsIgnoreCase("BURGER")) {
                    iconicButton.animateIconState(MaterialMenuDrawable.IconState.BURGER);
                } else if (state.equalsIgnoreCase("ARROW")) {
                    iconicButton.animateIconState(MaterialMenuDrawable.IconState.ARROW);
                } else if (state.equalsIgnoreCase("X")) {
                    iconicButton.animateIconState(MaterialMenuDrawable.IconState.X);
                } else if (state.equalsIgnoreCase("CHECK")) {
                    iconicButton.animateIconState(MaterialMenuDrawable.IconState.CHECK);
                }

                int id = frameLayout.getId();
                reactContext.getNativeModule(UIManagerModule.class).getEventDispatcher().dispatchEvent(
                        new RNIconicEvent(id, selection)
                );
            }
        });


        expandIconView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (selection + 1 == shapes.size()) selection = 0;
                else selection = selection + 1;

                String state = (String) shapes.get(selection);

                if (state.equalsIgnoreCase("up-basic")) {
                    expandIconView.switchState(true);
                } else if (state.equalsIgnoreCase("down-basic")) {
                    expandIconView.switchState(true);
                }

                int id = frameLayout.getId();
                reactContext.getNativeModule(UIManagerModule.class).getEventDispatcher().dispatchEvent(
                        new RNIconicEvent(id, selection)
                );
            }
        });

        return frameLayout;
    }

    @ReactProp(name = "size")
    public void setSize(FrameLayout iconicButtonFrame, int size) {
        MaterialMenuView iconicButton = (MaterialMenuView) iconicButtonFrame.getChildAt(0);
        ExpandIconView expandIconView = (ExpandIconView) iconicButtonFrame.getChildAt(1);

        iconicButton.onSizeChanged(size, size, size, size);
        expandIconView.onSizeChanged(size, size, size, size);
    }

    @ReactProp(name = "color")
    public void setColor(FrameLayout iconicButtonFrame, String color) {
        MaterialMenuView iconicButton = (MaterialMenuView) iconicButtonFrame.getChildAt(0);
        ExpandIconView expandIconView = (ExpandIconView) iconicButtonFrame.getChildAt(1);

        iconicButton.setColor(Color.parseColor(color));
        expandIconView.setColor(Color.parseColor(color));
    }

    @ReactProp(name = "disable")
    public void setDisable(FrameLayout iconicButtonFrame, boolean dis) {
        disable = dis;
    }

    @ReactProp(name = "selection")
    public void setSelection(FrameLayout iconicButtonFrame, int selc) {
        selection = selc;

        // Animate the icon if the selection changes
        setState(iconicButtonFrame, selection);
    }

    @ReactProp(name = "shape")
    public void setShape(FrameLayout iconicButtonFrame, ReadableArray shps) {
        shapes = shps.toArrayList();

        setState(iconicButtonFrame, selection);
    }

    private void setState(FrameLayout iconicButtonFrame, int selection) {
        MaterialMenuView iconicButton = (MaterialMenuView) iconicButtonFrame.getChildAt(0);
        ExpandIconView expandIconView = (ExpandIconView) iconicButtonFrame.getChildAt(1);

        String state = "";

        // Make sure the shapes array is filled and the selection is in range. Otherwise, draw the default state "ARROW"
        if(!shapes.isEmpty() && shapes.size() > selection)
            state = (String) shapes.get(selection);

        if (state.equalsIgnoreCase("BURGER")) {
            iconicButton.setVisible(true);
            iconicButton.setIconState(MaterialMenuDrawable.IconState.BURGER);
        } else if (state.equalsIgnoreCase("ARROW")) {
            iconicButton.setVisible(true);
            iconicButton.setIconState(MaterialMenuDrawable.IconState.ARROW);
        } else if (state.equalsIgnoreCase("X")) {
            iconicButton.setVisible(true);
            iconicButton.setIconState(MaterialMenuDrawable.IconState.X);
        } else if (state.equalsIgnoreCase("CHECK")) {
            iconicButton.setVisible(true);
            iconicButton.setIconState(MaterialMenuDrawable.IconState.CHECK);
        } else if (state.equalsIgnoreCase("up-basic")) {
            expandIconView.setVisibility(View.VISIBLE);
            expandIconView.setState(ExpandIconView.LESS, false);
        } else if (state.equalsIgnoreCase("down-basic")) {
            expandIconView.setVisibility(View.VISIBLE);
            expandIconView.setState(ExpandIconView.MORE, false);
        }
    }
}