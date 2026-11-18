bool cancelMatch = false;

void (*CMatchGroundMatchingRoomPartView_OnClickStopMatch)(void *thiz, void *uiEvent);
void (*_CMatchGroundMatchingRoomPartView_RefreshTimeText)(void *thiz, int totalTime);
void CMatchGroundMatchingRoomPartView_RefreshTimeText(void *thiz, int totalTime)
{
    if (thiz != nullptr)
    {
        if (cancelMatch)
        {
            CMatchGroundMatchingRoomPartView_OnClickStopMatch(thiz, nullptr);
            cancelMatch = false;
        }
    }
    _CMatchGroundMatchingRoomPartView_RefreshTimeText(thiz, totalTime);
}
