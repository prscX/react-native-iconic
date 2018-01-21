package ui.iconic;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;
import com.facebook.react.uimanager.events.RCTEventEmitter;

public class RNIconicEvent extends Event<RNIconicEvent> {

    public static final String EVENT_NAME = "topChange";

    private final int mSelection;

    public RNIconicEvent(int viewId, int selection) {
        super(viewId);
        mSelection = selection;
    }

    public int getSelection() {
        return mSelection;
    }

    @Override
    public String getEventName() {
        return EVENT_NAME;
    }

    @Override
    public short getCoalescingKey() {
        // All switch events for a given view can be coalesced.
        return 0;
    }

    @Override
    public void dispatch(RCTEventEmitter rctEventEmitter) {
        rctEventEmitter.receiveEvent(getViewTag(), getEventName(), serializeEventData());
    }

    private WritableMap serializeEventData() {
        WritableMap eventData = Arguments.createMap();
        eventData.putInt("target", getViewTag());
        eventData.putInt("value", getSelection());
        return eventData;
    }
}