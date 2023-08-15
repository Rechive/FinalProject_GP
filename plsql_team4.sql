SELECT USER
FROM DUAL;
--==>> TEAM4



--�� ����� ��Ͻ� ������ȣ �ڵ� ���� Ʈ���� ����
CREATE OR REPLACE TRIGGER TRG_INESRT_USER
    BEFORE
    INSERT ON USING_USER
    FOR EACH ROW
BEGIN
    INSERT INTO USER_LIST VALUES(:NEW.USER_NUM);
END;



--�� ���԰� �˻��� ���� �Ǵ� ����� ���� �Է��ߴ� ���� �˻��� ã�Ƽ� ���̳ʽ� 1
CREATE OR REPLACE TRIGGER TRG_MINUS_STSKEY
    BEFORE
    DELETE ON ST_SEARCH_KEY
    FOR EACH ROW
BEGIN
    UPDATE SEARCH_KEY
    SET COUNT = COUNT - 1
    WHERE ST_NUM = :OLD.ST_NUM;
END;
--==>> Trigger TRG_MINUS_STSKEY��(��) �����ϵǾ����ϴ�.