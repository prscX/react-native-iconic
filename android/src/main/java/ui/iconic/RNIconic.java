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

    @Override
    protected FrameLayout createViewInstance(final ThemedReactContext reactContext) {
        int randomId;

        Random rand = new Random();
        while (reactContext.getCurrentActivity().findViewById(randomId = rand.nextInt(Integer.MAX_VALUE) + 1) != null);
        final int viewId = randomId;

        final MaterialMenuView iconicButton = new MaterialMenuView(reactContext.getCurrentActivity());
        iconicButton.setVisible(true);
        iconicButton.setColor(Color.BLACK);

        final FrameLayout frameLayout = new FrameLayout(reactContext.getCurrentActivity());
        frameLayout.addView(iconicButton);

        iconicButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (selection + 1 == shapes.size()) selection = 0;
                else selection = selection + 1;

                iconicButton.animateIconState(getState(selection));

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
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(size, size);
        iconicButton.setLayoutParams(layoutParams);
    }

    @ReactProp(name = "tintColor")
    public void setTintColor(FrameLayout iconicButtonFrame, String color) {
        MaterialMenuView iconicButton = (MaterialMenuView) iconicButtonFrame.getChildAt(0);
        iconicButton.setColor(Color.parseColor(color));
    }

    @ReactProp(name = "selection")
    public void setSelection(FrameLayout iconicButtonFrame, int selc) {
        selection = selc;
    }

    @ReactProp(name = "shape")
    public void setShape(FrameLayout iconicButtonFrame, ReadableArray shps) {
        shapes = shps.toArrayList();

        MaterialMenuView iconicButton = (MaterialMenuView) iconicButtonFrame.getChildAt(0);
        iconicButton.setIconState(getState(selection));
    }

    private MaterialMenuDrawable.IconState getState(int selection) {
        String state = (String) shapes.get(selection);

        if (state.equalsIgnoreCase("BURGER")) {
            return MaterialMenuDrawable.IconState.BURGER;
        } else if (state.equalsIgnoreCase("ARROW")) {
            return MaterialMenuDrawable.IconState.ARROW;
        } else if (state.equalsIgnoreCase("X")) {
            return MaterialMenuDrawable.IconState.X;
        } else if (state.equalsIgnoreCase("CHECK")) {
            return MaterialMenuDrawable.IconState.CHECK;
        }

        return MaterialMenuDrawable.IconState.ARROW;
    }
}